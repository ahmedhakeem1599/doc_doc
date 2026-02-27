import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:docdoc/feature/auth/login/data/model/login_response_model.dart';
import 'package:docdoc/feature/auth/login/data/remote_data_source/auth_remote_data_source.dart';
import '../../../../../core/network/error/failure.dart';
import '../../../../../core/network/error/server_exceptions.dart';
import '../model/login_request_model.dart';

class AuthRepo {
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRepo(this._authRemoteDataSource);

  /// Login
  Future<Either<Failure, LoginResponseModel>> login(LoginRequestModel request) async {
    try {
      final result = await _authRemoteDataSource.login(loginRequest: request);
      return Right(result);
    } on DioException catch (e) {
      return Left(ServerExceptions.handleError(e));
    }
  }
}
