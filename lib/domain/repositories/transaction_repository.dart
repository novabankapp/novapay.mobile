

import 'package:nave_app/data/remote/models/transaction/Generate_trn_request.dart';
import 'package:nave_app/data/remote/models/transaction/transaction_ref_response.dart';
import 'package:nave_app/domain/entities/Transaction_ref.dart';

abstract class TransactionRepository{
  Future<List<TransactionRef>?> getTransactionReferencesByCustomerRef({required String customerRef, required int page, required int size});
  Future<String?> generateTRN(GenerateTrnRequest request);
  Future<TransactionRefResponse> getTransactionReferenceDetails(String transRef);
}