

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:nave_app/data/remote/models/transaction/Generate_trn_request.dart';
import 'package:nave_app/domain/entities/Transaction_ref.dart';
import 'package:nave_app/domain/repositories/transaction_repository.dart';

class GenerateTRNCubit extends Cubit<String?>{
  final TransactionRepository _repository;
  GenerateTRNCubit(this._repository) : super(null);
  FutureOr<void> generatePRN(GenerateTrnRequest request) async {
      var trn = await _repository.generateTRN(request);
      emit(trn);
  }
}