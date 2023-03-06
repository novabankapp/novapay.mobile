import 'dart:async';

import 'package:http/http.dart' show Client;
import 'package:injectable/injectable.dart';
import 'package:nave_app/data/remote/clients/api_constants.dart';

import 'base/base_client.dart';

@Injectable(as: BaseClient)
class HttpClient extends BaseClient{
  final Client _client;

  final String _baseUrl = ApiConstants.API_BASEURL;
  HttpClient(this._client);
  @override
  Future<dynamic> delete(dynamic url, {Map<String, String>? headers}) async{
    var uri = Uri.https(_baseUrl,url);
    final response = await _client.delete(uri,headers:headers)
        .timeout(const Duration(seconds:10),
        onTimeout: (){
          throw TimeoutException("Connection timed out");
        }
    );
    if (response.statusCode == 200) {
      return response.body;
    }
    else if(response.statusCode == 404){
      throw  Exception("Object not found");
    }
    else{
      throw Exception("Failed to mutate data");
    }
  }

  @override
  Future<dynamic> get(dynamic url, {Map<String, String>? headers,
    Map<String, dynamic>? queryParameters}) async{
    var uri = Uri.https(_baseUrl,url);
    if(queryParameters != null){
      uri =
          Uri.https(url,'', queryParameters);
    }
    final response = await _client.get(uri,headers:headers)
        .timeout(const Duration(seconds:30),
        onTimeout: (){
          throw TimeoutException("Connection timed out");
        }
    );
    if (response.statusCode == 200) {
      return response.body;
    }
    else if(response.statusCode == 404){
      throw Exception("Object not found");
    }
    else{
      throw Exception("Failed to fetch data");
    }

  }

  @override
  Future<dynamic> post(dynamic url, {Map<String, String>? headers, body}) async{
    var uri = Uri.https(_baseUrl,url);
    final response = await _client.post(uri, headers : headers,body:body)
        .timeout(const Duration(seconds:30),
        onTimeout: (){
          throw TimeoutException("Connection timed out");
        }
    );
    if (response.statusCode == 200) {
      return response.body;
    }
    else if(response.statusCode == 404){
      throw Exception("Object not found");
    }
    else{
      throw Exception("Failed to post data");
    }
  }

  @override
  Future<dynamic> put(dynamic url, {Map<String, String>? headers, body}) async{
    var uri = Uri.https(_baseUrl,url);
    final response = await _client.put(uri, headers : headers,body:body)
        .timeout(const Duration(seconds:10),
        onTimeout: (){
          throw TimeoutException("Connection timed out");
        }
    );
    if (response.statusCode == 200) {
      return response.body;
    }
    else if(response.statusCode == 404){
      throw Exception("Object not found");
    }
    else{
      throw Exception("Failed to put data");
    }
  }

}