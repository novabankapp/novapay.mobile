

import 'package:injectable/injectable.dart';
import 'package:nave_app/data/remote/models/transaction/Generate_trn_request.dart';
import 'package:nave_app/domain/entities/Transaction_ref.dart';
import 'package:nave_app/domain/repositories/transaction_repository.dart';

@Injectable(as: TransactionRepository)
class TransactionRepositoryTestImpl extends TransactionRepository{
  @override
  Future<String?> generateTRN(GenerateTrnRequest request) async {
      return await Future.delayed(Duration.zero, () => "12345");
  }

  @override
  Future<List<TransactionRef>?> getTransactionReferencesByCustomerRef({required String customerRef, required int page, required int size}) async {
    return await Future.delayed(Duration.zero, () => [
        TransactionRef(

        )
    ]);
  }

}