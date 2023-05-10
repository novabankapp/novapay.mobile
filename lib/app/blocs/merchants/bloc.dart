
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:injectable/injectable.dart';
import 'package:nave_app/app/blocs/common/data_event.dart';
import 'package:nave_app/app/blocs/common/data_state.dart';
import 'package:nave_app/domain/entities/Merchant.dart';
import 'package:nave_app/domain/repositories/service_repository.dart';


enum FetchType{
  normal,
  byCategory,
}

@injectable
class MerchantBloc extends Bloc<DataEvent, DataState> {
  List<Merchant>? myList;
  int size = 10;
  int start = 0;
  int? categoryId;
  FetchType fetchType = FetchType.normal;
  final ServiceRepository _repository;

  MerchantBloc(this._repository) : super(const DataState()){
    on<DataLoad>(
      _onServicesFetch,
      transformer: droppable(),
    );
    on<DataByCategoryLoad>(
      _onServicesByCategory,
    );
    // Refresh Event
    on<DataRefresh>(
      _onServicesRefresh,
      transformer: droppable(),
    );
  }
  FutureOr<void> _onServicesByCategory(DataByCategoryLoad event, Emitter<DataState> emit) async{
    try {

      if (state.hasReachedMax) return;
      if (state.status == DataStatus.initial) {
        final services = await _repository.getServicesByCategory(categoryId: event.categoryId,page: start, size: size);
        return emit(
          state.copyWith(
            myList: services,
            hasReachedMax: false,
            status: DataStatus.success,
          ),
        );
      }

      final services = await _repository.getServicesByCategory(categoryId: event.categoryId,page: state.myList.length, size: size);
      if (services == null || services.isEmpty) {
        return emit(state.copyWith(hasReachedMax: true));
      } else {
        return emit(
          state.copyWith(
            myList: List.of(state.myList)..addAll(myList!),
            hasReachedMax: false,
          ),
        );
      }
    } catch (e) {

      return emit(state.copyWith(status: DataStatus.error));
    }
  }
  FutureOr<void> _onServicesFetch(DataLoad event, Emitter<DataState> emit) async {
    try {
      if (state.hasReachedMax) return;
      if (state.status == DataStatus.initial) {
        final services = await _repository.getServices(page: start, size: size);
        return emit(
          state.copyWith(
            myList: services,
            hasReachedMax: false,
            status: DataStatus.success,
          ),
        );
      }

      final services = await _repository.getServices(page: state.myList.length, size: size);
      if (services == null || services.isEmpty) {
        return emit(state.copyWith(hasReachedMax: true));
      } else {
        return emit(
          state.copyWith(
            myList: List.of(state.myList)..addAll(myList!),
            hasReachedMax: false,
          ),
        );
      }
    } catch (e) {

      return emit(state.copyWith(status: DataStatus.error));
    }
  }

  FutureOr<void> _onServicesRefresh(DataRefresh event, Emitter<DataState> emit) async {
    emit(const DataState());
    await Future.delayed(const Duration(seconds: 1));
    if(fetchType == FetchType.normal)
      add(const DataLoad());
    else if(fetchType == FetchType.byCategory) {
      if(event.categoryId != null)
        add(DataByCategoryLoad(event.categoryId!));
    }
  }
}