

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nave_app/app/blocs/transactions/generate_cubit_state.dart';
import 'package:nave_app/data/remote/models/transaction/Generate_trn_request.dart';
import 'package:nave_app/domain/entities/Transaction_ref.dart';
import 'package:nave_app/domain/repositories/transaction_repository.dart';

@injectable
class GenerateTRNCubit extends Cubit<GenerateTRNState>{
  final TransactionRepository _repository;
  GenerateTRNCubit(this._repository) : super(TRNInitial(trn:null));
  FutureOr<void> generatePRN(GenerateTrnRequest request) async {
      emit(TRNLoading(trn: null));
      print("Before TRN is ${state}");
      var trn = await _repository.generateTRN(request);
      emit(TRNLoaded(trn: trn));
      print("After TRN is ${state}");
  }
}