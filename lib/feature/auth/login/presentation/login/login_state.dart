import '../../data/model/login_response_model.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final LoginResponseModel data;
  LoginSuccess(this.data);
}

class LoginError extends LoginState {
  final String message;
  LoginError(this.message);
}