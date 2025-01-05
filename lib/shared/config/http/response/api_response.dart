
import 'package:base_2/shared/config/http/app/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/api_response.freezed.dart';

@freezed
class APIResponse<T> with _$APIResponse<T> {
  const factory APIResponse.success(T value) = Success<T>;
  const factory APIResponse.error(AppException exception) = Error<T>;
}