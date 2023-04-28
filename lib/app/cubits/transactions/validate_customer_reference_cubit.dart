import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nave_app/data/remote/models/transaction/validate_customer_reference_reference.dart';
import 'package:nave_app/data/remote/models/transaction/validate_customer_reference_response.dart';
import 'package:nave_app/domain/repositories/transaction_repository.dart';

@injectable
class ValidateCustomerReferenceCubit extends Cubit<ValidateCustomerReferenceResponse?>{
  final TransactionRepository _repository;
  ValidateCustomerReferenceCubit(this._repository) : super(null);

  FutureOr<void> validateCustomerReference(ValidateCustomerReferenceRequest request) async {
    emit(null);
    try {
      var response = await _repository.validateCustomerReference(request);
      emit(response);
    }
    on Exception {
      emit(null);
    }

  }
}