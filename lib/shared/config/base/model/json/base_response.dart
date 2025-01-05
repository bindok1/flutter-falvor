class BaseResponse<T> {
  final String status;
  final int code;
  final String message;
  final T? data;

  BaseResponse({
    required this.status,
    required this.code,
    required this.message,
    required this.data,
  });

  BaseResponse.success(this.data):
        status = "success",
        code = 200,
        message = "OK";

  BaseResponse.error(this.message, {this.code = 500}):
        status = "error",
        data = null;

  factory BaseResponse.fromJson(
      Map<String, dynamic> json,
      T Function(dynamic json)? fromJsonT
      ) => BaseResponse<T>(
    status: json['status'] ?? '',
    code: json['code'] ?? 0,
    message: json['message'] ?? '',
    data: json['data'] != null ? fromJsonT!(json['data']) : null,
  );

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T) toJsonT) => {
    "status": status,
    "code": code,
    "message": message,
    "data": data != null ? toJsonT(data!) : null,
  };
}
