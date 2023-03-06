import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:nave_app/data/remote/clients/api_constants.dart';
import 'package:nave_app/data/remote/clients/base/base_client.dart';
import 'package:nave_app/data/remote/models/auth/registration_request.dart';
import 'package:nave_app/data/remote/models/auth/registration_response.dart';
import 'package:nave_app/data/remote/models/auth/registration_response_wrapper.dart';

@Injectable()
class AuthenticationApiProvider {
  final BaseClient _client;

  AuthenticationApiProvider(this._client);

  Future<RegistrationResponseWrapper> register(RegistrationRequest request) async {

    final response = await _client.post(ApiConstants.SIGNUP,
        headers : <String,String>{
          'Content-Type' : 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(request)
    );
    var successResponse = RegistrationResponse.fromJson(json.decode(response));
    return RegistrationResponseWrapper(response: successResponse, success: true);

  }
}