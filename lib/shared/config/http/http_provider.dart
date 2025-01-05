part of 'http_util.dart';

enum ContentType { urlEncoded, json }

@lazySingleton
class HttpProvider {
  late Dio _dio;
  


  BaseOptions get _options => BaseOptions(
          baseUrl: FlavorConfig.instance.variables[CoreConstant.keyBaseUrl],
          connectTimeout: const Duration(seconds: 90),
          receiveTimeout: const Duration(seconds: 90),
          sendTimeout: const Duration(seconds: 90),
          headers: {
            'Content-Type': 'application/json',
          });

  late List<Interceptor> _dioInterceptor;

  HttpProvider() {
    _dio = Dio();
    _dioInterceptor = [
      PrettyDioLogger(requestHeader: true),
      RetryOnConnectionChangeInterceptor(
        requestRetrier: DioConnectivityRequestRetrier(
          dio: _dio,
          connectivity: Connectivity(),
        ),
      ),
    ];

    _dio.options = _options;
    _dio.interceptors.addAll(_dioInterceptor);
  }

  Future<APIResponse> exec(
    HttpMethod method,
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
    ContentType contentType = ContentType.json,
  }) async {
    late Response<dynamic> response;

    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return const APIResponse.error(AppException.connectivity());
    }

    var content = contentType == ContentType.json
        ? 'application/json'
        : 'application/x-www-form-urlencoded';

    _dio.options.headers['Content-Type'] = content;

    try {
      switch (method) {
        case HttpMethod.POST:
          response = await _dio.post(
            path,
            data: body,
            queryParameters: query,
            options: Options(validateStatus: (status) => true),
          );
          break;
        case HttpMethod.DELETE:
          response = await _dio.delete(
            path,
            queryParameters: query,
            options: Options(validateStatus: (status) => true),
          );
          break;
        case HttpMethod.PUT:
          response = await _dio.put(
            path,
            data: body,
            queryParameters: query,
            options: Options(validateStatus: (status) => true),
          );
          break;
        default:
          response = await _dio.get(
            path,
            queryParameters: query,
            options: Options(validateStatus: (status) => true),
          );
      }

      if (response.statusCode == null) {
        return const APIResponse.error(AppException.connectivity());
      }

      if (response.statusCode! < 300) {
        if (response.data['data'] != null) {
          return APIResponse.success(response.data['data']);
        } else {
          return APIResponse.success(response.data);
        }
      } else {
        return handleError(response.statusCode ?? 0,
            response.data['message'] ?? response.statusMessage);
      }
    } on DioException catch (e) {
      return handleError(e.response?.statusCode ?? 0,
          e.response?.data['message'] ?? e.message);
    }
  }
}
