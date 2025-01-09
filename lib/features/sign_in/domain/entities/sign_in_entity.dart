import 'dart:convert';

import 'package:base_2/features/sign_in/utlis/role_model.dart';
import 'package:base_2/features/sign_in/utlis/user_role_enums.dart';
import 'package:base_2/shared/config/base/model/base_model.dart';

class UserEntity extends BaseModel<UserEntity> {
  final int userId;
  final String username;
  final String email;
  final RoleModel roleData; 
  final UserRole role;     
  final String token;
  final String expiresAt;
  final String message;

  UserEntity({
    required this.userId,
    required this.username,
    required this.email,
    required this.roleData,
    required this.token,
    required this.expiresAt,
    this.message = "",
  }) : role = UserRole.fromJson(roleData.name);

  factory UserEntity.empty() => UserEntity(
    userId: 0,
    username: '',
    email: '',
    roleData: RoleModel(name: 'user', level: 1),
    token: '',
    expiresAt: '',
  ); 

  UserEntity fromJson(Map<String, dynamic> json, String message) => UserEntity(
    userId: json["user_id"],
    username: json["username"],
    email: json["email"],
    roleData: RoleModel.fromJson(json["role"]),
    token: json["token"],
    expiresAt: json["expires_at"],
    message: message,
  );

  @override
  Map<String, dynamic> toJson() => {
    'user_id': userId,
    'username': username,
    'email': email,
    'role': roleData.toJson(),
    'token': token,
    'expires_at': expiresAt,
  };

  @override
  String toString() {
    return jsonEncode(toJson());
  }

  @override
  String getMessage() => message;
}