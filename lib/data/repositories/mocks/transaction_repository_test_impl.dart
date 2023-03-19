

import 'package:injectable/injectable.dart';
import 'package:nave_app/data/remote/models/transaction/Generate_trn_request.dart';
import 'package:nave_app/data/remote/models/transaction/transaction_ref_response.dart';
import 'package:nave_app/domain/entities/Transaction_ref.dart' as tr;
import 'package:nave_app/domain/repositories/transaction_repository.dart';

@Injectable(as: TransactionRepository)
class TransactionRepositoryTestImpl extends TransactionRepository{
  @override
  Future<String?> generateTRN(GenerateTrnRequest request) async {
      return await Future.delayed(Duration.zero, () => "12345");
  }

  @override
  Future<List<tr.TransactionRef>?> getTransactionReferencesByCustomerRef({required String customerRef, required int page, required int size}) async {
    return await Future.delayed(Duration.zero, () => [
        tr.TransactionRef(
              recordId: 1234,
              trn: "1234",
              customerReference: "1234",
              amount: 123000.00,
              serviceUniqueIdentifier: "1234",
              financialServiceUniqueIdentifier: "1234",
              merchant:  tr.Merchant(
                  id: 1234,
                  name: "LWB",
                  uniqueId: "1234"
              ),
              bank: tr.Bank(
                id: 1234,
                name: "National Bank",
                uniqueId: "1234"
              )
        ),
      tr.TransactionRef(
          recordId: 1234,
          trn: "1234",
          customerReference: "1234",
          amount: 12300.00,
          serviceUniqueIdentifier: "1234",
          financialServiceUniqueIdentifier: "1234",
          merchant:  tr.Merchant(
              id: 1234,
              name: "ESCOM",
              uniqueId: "1234"
          ),
          bank: tr.Bank(
              id: 1234,
              name: "National Bank",
              uniqueId: "1234"
          )
      ),
      tr.TransactionRef(
          recordId: 1234,
          trn: "1234",
          customerReference: "1234",
          amount: 1000.00,
          serviceUniqueIdentifier: "1234",
          financialServiceUniqueIdentifier: "1234",
          merchant:  tr.Merchant(
              id: 1234,
              name: "Airtel Money",
              uniqueId: "1234"
          ),
          bank: tr.Bank(
              id: 1234,
              name: "National Bank",
              uniqueId: "1234"
          )
      )
    ]);
  }

  @override
  Future<TransactionRefResponse> getTransactionReferenceDetails(String transRef) async{
    return await Future.delayed(Duration.zero, () => TransactionRefResponse(
        trn: "1234",
        amount: 1000.00,
        used: true,
        service: Service(
            name: 'ESCOM',
            uniqueId: "12345"
        ),
        bank: Bank(
            name: 'National Bank',
            uniqueId: '1234'

        )));
  }

}