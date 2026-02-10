import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../error/failure.dart';
import '../error/server_exceptions.dart';
import 'dio_factory.dart';

class ApiService {
  final Dio dio = DioFactory.getDio();

  /// CRUD Methods

  /// Get Method
  Future<Either<Failure, Response>> get({required String endPoint, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(endPoint, queryParameters: queryParameters);
      return Right(response);
    } on DioException catch (e) {
      return Left(ServerExceptions.handleError(e));
    }
  }

  /// Post Method
  Future<Either<Failure, Response>> post({required String endPoint, dynamic data}) async {
    try {
      final response = await dio.post(endPoint, data: data);
      return Right(response);
    } on DioException catch (e) {
      return Left(ServerExceptions.handleError(e));
    }
  }

  /// Patch Method
  Future<Either<Failure, Response>> updateOnceOrMore({required String endPoint, dynamic data}) async {
    try {
      final response = await dio.patch(endPoint, data: data);
      return Right(response);
    } on DioException catch (e) {
      return Left(ServerExceptions.handleError(e));
    }
  }

  /// Put Method
  Future<Either<Failure, Response>> updateAll({required String endPoint, dynamic data}) async {
    try {
      final response = await dio.put(endPoint, data: data);
      return Right(response);
    } on DioException catch (e) {
      return Left(ServerExceptions.handleError(e));
    }
  }

  /// Delete Method
  Future<Either<Failure, Response>> delete({required String endPoint}) async {
    try {
      final response = await dio.delete(endPoint);
      return Right(response);
    } on DioException catch (e) {
      return Left(ServerExceptions.handleError(e));
    }
  }

}
