part of 'interceptor.dart';

class TokenInterceptor extends Interceptor {
  final String token;
  final String contentType;

  TokenInterceptor(this.token, this.contentType);

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Content-Type'] = contentType;
    if (token.isNotEmpty){
      options.headers['Authorization'] = 'Bearer $token';
    }
    return handler.next(options);
  }
}
