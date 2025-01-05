import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/app_exception.freezed.dart';


@freezed
class AppException with _$AppException {
  const factory AppException.badRequest() = AppExceptionBadRequest;

  const factory AppException.connectivity() = AppExceptionConnectivity;

  const factory AppException.unauthorized() = AppExceptionUnauthorized;

  const factory AppException.notFound() = AppExceptionNotFound;

  const factory AppException.errorWithMessage(String message) =
  _AppExceptionErrorMessage;

  const factory AppException.error() = _AppExceptionError;
}