part of '../interceptor.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final DioConnectivityRequestRetrier requestRetrier;

  RetryOnConnectionChangeInterceptor({
    required this.requestRetrier,
  });

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (_shouldRetry(err)) {
      try {
        requestRetrier.scheduleRequestRetry(err.requestOptions);
      } catch (e) {
      }
    }
  }

  bool _shouldRetry(DioException err) {
    return err.type == DioException.connectionTimeout &&
        err.error != null &&
        err.error is SocketException;
  }
}