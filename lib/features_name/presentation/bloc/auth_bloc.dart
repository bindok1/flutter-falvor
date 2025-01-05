import 'package:base_2/core/error/failures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:dartz/dartz.dart';

import '../../domain/entities/user_entities.dart';
import '../../domain/usecases/sign_in_usecase.dart';

abstract class AuthEvent {}

class SignInEvent extends AuthEvent {
  final String email;
  final String password;

  SignInEvent({required this.email, required this.password});
}

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthLoaded extends AuthState {
  final User user;

  AuthLoaded({required this.user});
}

class AuthError extends AuthState {
  final String message;

  AuthError({required this.message});
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignIn signIn;

  AuthBloc({required this.signIn}) : super(AuthInitial());

  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is SignInEvent) {
      yield AuthLoading();
      final failureOrUser = await signIn(SignInParams(email: event.email, password: event.password));
      yield* _eitherLoadedOrErrorState(failureOrUser);
    }
  }

  Stream<AuthState> _eitherLoadedOrErrorState(Either<Failure, User> either) async* {
    yield either.fold(
      (failure) => AuthError(message: _mapFailureToMessage(failure)),
      (user) => AuthLoaded(user: user),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure _:
        return 'Server Failure';
      default:
        return 'Unexpected Error';
    }
  }
}