part of 'http_util.dart';

APIResponse handleError(int code, String message) {
  if (code == 401) {
    return const APIResponse.error(AppException.unauthorized());
  } else if (code == 400) {
    if(message.contains("Maaf, username atau password salah") || message.contains("Maaf akun sudah berada di device lain")) {
      return APIResponse.error(AppException.errorWithMessage(message));
    } else {
      return const APIResponse.error(AppException.badRequest());
    }
  } else if (code == 404) {
    return const APIResponse.error(AppException.notFound());
  } else if (code > 500) {
    return const APIResponse.error(AppException.error());
  } else if(code > 404) {
    if (message.isNotEmpty) {
      return APIResponse.error(AppException.errorWithMessage(message));
    } else {
      return const APIResponse.error(AppException.error());
    }
  } else {
    return const APIResponse.error(AppException.error());
  }
}