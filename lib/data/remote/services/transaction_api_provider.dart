import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:nave_app/data/remote/clients/api_constants.dart';
import 'package:nave_app/data/remote/clients/base/base_client.dart';
import 'package:nave_app/data/remote/models/transaction/Generate_trn_request.dart';
import 'package:nave_app/data/remote/models/transaction/generate__trn_response.dart';
import 'package:nave_app/data/remote/models/transaction/transaction_ref_response.dart';

@Injectable()
class TransactionApiProvider {
  final BaseClient _client;
  TransactionApiProvider(this._client);

   Future<GenerateTrnResponse> generateTRN(GenerateTrnRequest request) async {
     final response = await _client.post(ApiConstants.GENERATETRN,
         headers : <String,String>{
           'Content-Type' : 'application/json',
           'Accept': 'application/json',
         },
         body: jsonEncode(request)
     );
     return GenerateTrnResponse.fromJson(response);
   }
   Future<TransactionRefResponse> getTransactionReferenceDetails(String transRef) async{
        final response = await _client.get("${ApiConstants.GET_REFERENCE}/${transRef}",
          headers : <String,String>{
            'Content-Type' : 'application/json',
            'Accept': 'application/json',
          },
          queryParameters: null
        );
        return TransactionRefResponse.fromJson(response);
   }

}