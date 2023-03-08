
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:nave_app/app/blocs/common/data_event.dart';
import 'package:nave_app/app/blocs/common/data_state.dart';
import 'package:nave_app/domain/entities/Bank.dart';
import 'package:nave_app/domain/repositories/bank_repository.dart';


enum FetchType{
  normal,
  byCategory,
}

class BankBloc extends Bloc<DataEvent, DataState> {
  List<Bank>? myList;
  int size = 10;
  int start = 0;
  int? categoryId;
  FetchType fetchType = FetchType.normal;
  final BankRepository _repository;

  BankBloc(this._repository) : super(const DataState()){
      on<DataLoad>(
      _onBanksFetch,
      transformer: droppable(),
      );
      on<DataByCategoryLoad>(
        _onBanksByCategory,
      );
      // Refresh Event
      on<DataRefresh>(
      _onBanksRefresh,
      transformer: droppable(),
      );
  }
  FutureOr<void> _onBanksByCategory(DataByCategoryLoad event, Emitter<DataState> emit) async{
    try {

      if (state.hasReachedMax) return;
      if (state.status == DataStatus.initial) {
        final banks = await _repository.getBanksByCategory(categoryId: event.categoryId,page: start, size: size);
        return emit(
          state.copyWith(
            myList: banks,
            hasReachedMax: false,
            status: DataStatus.success,
          ),
        );
      }

      final banks = await _repository.getBanksByCategory(categoryId: event.categoryId,page: state.myList.length, size: size);
      if (banks == null || banks.isEmpty) {
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
  FutureOr<void> _onBanksFetch(DataLoad event, Emitter<DataState> emit) async {
    try {
      if (state.hasReachedMax) return;
      if (state.status == DataStatus.initial) {
        final banks = await _repository.getBanks(page: start, size: size);
        return emit(
          state.copyWith(
            myList: banks,
            hasReachedMax: false,
            status: DataStatus.success,
          ),
        );
      }

      final banks = await _repository.getBanks(page: state.myList.length, size: size);
      if (banks == null || banks.isEmpty) {
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

  FutureOr<void> _onBanksRefresh(DataRefresh event, Emitter<DataState> emit) async {
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