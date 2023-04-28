import 'package:nave_app/data/graphQL/transaction_graphql.dart';
import 'package:nave_app/data/remote/models/transaction/Generate_trn_request.dart';
import 'package:nave_app/data/remote/models/transaction/transaction_ref_response.dart';
import 'package:nave_app/data/remote/models/transaction/validate_customer_reference_reference.dart';
import 'package:nave_app/data/remote/models/transaction/validate_customer_reference_response.dart';
import 'package:nave_app/data/remote/services/transaction_api_provider.dart';
import 'package:nave_app/domain/entities/Transaction_ref.dart';
import 'package:nave_app/domain/repositories/transaction_repository.dart';

class TransactionRepositoryImpl extends TransactionRepository{
  final TransactionApiProvider apiService;
  final TransactionGraphQLService transactionGraphQLService;
  TransactionRepositoryImpl(this.apiService,this.transactionGraphQLService);
  @override
  Future<String?> generateTRN(GenerateTrnRequest request) async {
       var response = await apiService.generateTRN(request);
       return response.trn;
  }

  @override
  Future<List<TransactionRef>?> getTransactionReferencesByCustomerRef({required String customerRef, required page, required size}) async {
      var response = await transactionGraphQLService.getCustomerTransactionRefs(customerRef, page, size);
      return response?.map((e) => TransactionRef.getCustomerTransactionPaginated(e!)).toList();
  }

  @override
  Future<TransactionRefResponse> getTransactionReferenceDetails(String transRef) async{
      return apiService.getTransactionReferenceDetails(transRef);
  }

  @override
  Future<ValidateCustomerReferenceResponse> validateCustomerReference(ValidateCustomerReferenceRequest request) {
    return apiService.validateCustomerReference(request);
  }

}