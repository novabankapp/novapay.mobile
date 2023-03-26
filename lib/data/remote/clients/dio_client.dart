

import 'package:nave_app/data/remote/clients/api_constants.dart';

import 'base/base_client.dart';
import 'package:dio/dio.dart';

class DioClient extends BaseClient{
  var dio;

  DioClient(){
    var options = BaseOptions(
      baseUrl: "https://${ApiConstants.API_BASEURL}/",
      connectTimeout: const Duration( milliseconds: 5000),
      receiveTimeout: const Duration( milliseconds:3000),
    );
    dio = Dio(options);
  }

  @override
  Future<dynamic> delete(dynamic url, {Map<String, String>? headers}) async{
    try{
      var response = await dio.delete(url,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    }on DioError  catch (ex) {
      if(ex.type == DioErrorType.connectionTimeout){
        throw Exception("Connection  Timeout Exception");
      }
      throw Exception(ex.message);
    }
  }

  @override
  Future<dynamic> get(dynamic url,
      {Map<String, String>? headers,
        Map<String, dynamic>? queryParameters}) async{
    try{
      var response = await dio.get(url,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ),
      );
      if (response.statusCode == 200) {
        return response.data;
      }
      else{
        throw new Exception("Failed to fetch data");
      }


    }on DioError  catch (ex) {
      if(ex.type == DioErrorType.connectionTimeout){
        throw Exception("Connection  Timeout Exception");
      }
      throw Exception(ex.message);
    }
  }

  @override
  Future post(url, {Map<String, String>? headers, body}) {
    try{
      var response = dio.post(
        url,
        data: body,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    }on DioError  catch (ex) {
      if(ex.type == DioErrorType.connectionTimeout){
        throw Exception("Connection  Timeout Exception");
      }
      throw Exception(ex.message);
    }
  }

  @override
  Future put(url, {Map<String, String>? headers, body}) async{
    try{
      var response = await dio.put(url,
          options: Options(
            headers: headers,
          ), data: body);

      return response;
    }on DioError  catch (ex) {
      if(ex.type == DioErrorType.connectionTimeout){
        throw Exception("Connection  Timeout Exception");
      }
      throw Exception(ex.message);
    }
  }

}