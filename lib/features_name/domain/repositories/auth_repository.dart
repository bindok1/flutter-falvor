
import 'package:base_2/core/error/failures.dart';
import 'package:base_2/features_name/domain/entities/user_entities.dart';
import 'package:dartz/dartz.dart';



abstract class AuthRepository {
  Future<Either<Failure, User>> signIn(String email, String password);
}