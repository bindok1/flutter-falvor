import 'package:base_2/features/sign_in/utlis/user_role_enums.dart';

class RoleModel {
  final String name;
  final int level;

  RoleModel({
    required this.name,
    required this.level,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json) {
    return RoleModel(
      name: json['name'] as String,
      level: json['level'] as int,
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'level': level,
  };

  
  UserRole toEnum() => UserRole.fromJson(name);
}