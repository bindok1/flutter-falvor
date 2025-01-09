import 'dart:convert';

import 'package:base_2/core/constant/fss_constant.dart';
import 'package:base_2/features/sign_in/domain/entities/sign_in_entity.dart';
import 'package:base_2/features/sign_in/utlis/user_role_enums.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@singleton
class Core {
  final FlutterSecureStorage _storage;
  
  static UserEntity? _user;
  UserEntity? get user => _user;

  Core(this._storage);

  Future<void> setUserData() async {
    final String? userData = await _storage.read(key: FssConst.auth);
    _user = userData != null 
      ? UserEntity.empty().fromJson(jsonDecode(userData), "Success")
      : null;
  }

  Future<void> saveUser(UserEntity user) async {
    await _storage.write(
      key: FssConst.auth,
      value: jsonEncode(user.toJson())
    );
    _user = user;
  }

  Future<void> clearUser() async {
    await _storage.delete(key: FssConst.auth);
    await _storage.delete(key: FssConst.token);
    await _storage.delete(key: FssConst.role);
    _user = null;
  }

  bool hasRole(List<UserRole> allowedRoles) => 
    _user != null && allowedRoles.contains(_user?.role);
}