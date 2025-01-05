import 'package:base_2/core/error/exceptions.dart';
import 'package:dio/dio.dart';


import '../models/user_model.dart';


abstract class AuthRemoteDataSource {
  Future<UserModel> signIn(String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl({required this.dio});

  @override
  Future<UserModel> signIn(String email, String password) async {
    try {
      final response = await dio.post(
        'https://api.example.com/signin',
        data: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}