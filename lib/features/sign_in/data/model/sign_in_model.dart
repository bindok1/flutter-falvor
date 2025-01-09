import 'dart:convert';
import 'package:base_2/features/sign_in/domain/entities/sign_in_entity.dart';
import 'package:base_2/features/sign_in/utlis/role_model.dart';
import 'package:base_2/features/sign_in/utlis/user_role_enums.dart';
import 'package:base_2/shared/config/base/model/base_model.dart';



class UserModel extends BaseModel<UserModel> {
  final int userId;
  final String username;
  final String email;
  final RoleModel role;
  final String token;
  final String expiresAt;
  final String message;

  UserModel({
       required this.userId,
    required this.username,
    required this.email,
    required this.role,
    required this.token,
    required this.expiresAt,
    required this.message,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    userId: json["user_id"],
    username: json["username"],
    email: json["email"],
    role: RoleModel.fromJson(json["role"] as Map<String, dynamic>),
    token: json["token"],
    expiresAt: json["expires_at"],
    message: json['message']
  );

  @override
  Map<String, dynamic> toJson() => {
    'user_id': userId,
    'username': username,
    'email': email,
    'role': role.toJson(),
    'token': token,
    'expires_at': expiresAt,
  };

  @override
  String toString() {
    return jsonEncode(toJson());
  }

  UserEntity toEntity() => UserEntity(
    userId: userId,
    username: username,
    email: email,
    roleData: role,
    token: token,
    expiresAt: expiresAt,
  );

  @override
  String getMessage() => message;

  UserModel copyWith({
    int? userId,
    String? username,
    String? email,
    RoleModel? role,
    String? token,
    String? expiresAt,
    String? message,
  }) {
    return UserModel(
      userId: userId ?? this.userId,
      username: username ?? this.username,
      email: email ?? this.email,
      role: role ?? this.role,
      token: token ?? this.token,
      expiresAt: expiresAt ?? this.expiresAt,
      message: message ?? this.message,
    );
  }

    UserRole get userRole => UserRole.fromJson(role.name);
}