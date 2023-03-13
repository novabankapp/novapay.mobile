

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:injectable/injectable.dart';
import 'package:nave_app/app/blocs/transactions/events.dart';
import 'package:nave_app/app/blocs/transactions/states.dart';
import 'package:nave_app/domain/entities/Transaction_ref.dart';
import 'package:nave_app/domain/repositories/transaction_repository.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  List<TransactionRef>? myList;
  int size = 10;
  int start = 0;
  final TransactionRepository _repository;

  TransactionBloc(this._repository) : super(const TransactionState()){
    on<TransactionByCustomerRefLoad>(
      _onTransactionFetch,
      transformer: droppable(),
    );
    // Refresh Event
    on<TransactionRefresh>(
      _onTransactionRefresh,
      transformer: droppable(),
    );
  }

  FutureOr<void> _onTransactionFetch(TransactionByCustomerRefLoad event, Emitter<TransactionState> emit) async {
    try {
      if (state.hasReachedMax) return;
      if (state.status == TransactionStatus.initial) {
        final services = await _repository.getTransactionReferencesByCustomerRef(page: start, size: size, customerRef: event.ref);
        return emit(
          state.copyWith(
            myList: services,
            hasReachedMax: false,
            status: TransactionStatus.success,
          ),
        );
      }

      final services = await _repository.getTransactionReferencesByCustomerRef(customerRef: event.ref,page: state.myList.length, size: size);
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

      return emit(state.copyWith(status: TransactionStatus.error));
    }
  }

  FutureOr<void> _onTransactionRefresh(TransactionRefresh event, Emitter<TransactionState> emit) async {
    emit(const TransactionState());
    await Future.delayed(const Duration(seconds: 1));
    add(TransactionByCustomerRefLoad(event.ref!));

  }
}