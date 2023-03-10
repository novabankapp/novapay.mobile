abstract class BaseClient{
  Future<dynamic> get(dynamic url,{ Map<String,String> headers,
    Map<String, dynamic>? queryParameters,
  });
  Future<dynamic> post(dynamic url,{ Map<String,String> headers, dynamic body});

  Future<dynamic> put(dynamic url,{ Map<String,String> headers, dynamic body});

  Future<dynamic> delete(dynamic url,{ Map<String,String> headers,

  });
}