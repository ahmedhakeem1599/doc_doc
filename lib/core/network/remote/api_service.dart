import 'package:dio/dio.dart';
import '../error/server_exceptions.dart';
import 'dio_factory.dart';

class ApiService {
  /// Make instance from DioClient
  final Dio dio = DioFactory.getDio();

  /// CRUD Methods

  /// Get Method
  Future<dynamic> get({required String endPoint, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(endPoint, queryParameters: queryParameters);
      return response;
    } on DioException catch (e) {
      return ServerExceptions.handleError(e);
    }
  }

  /// Post Method
  Future<dynamic> post({required String endPoint, dynamic data}) async {
    try {
      final response = await dio.post(endPoint, data: data);
      return response;
    } on DioException catch (e) {
      return ServerExceptions.handleError(e);
    }
  }

  /// Patch Method
  Future<dynamic> updateOnceOrMore({required String endPoint, dynamic data}) async {
    try {
      final response = await dio.patch(endPoint, data: data);
      return response;
    } on DioException catch (e) {
      return ServerExceptions.handleError(e);
    }
  }

  /// Put Method
  Future<dynamic> updateAll({required String endPoint, dynamic data}) async {
    try {
      final response = await dio.put(endPoint, data: data);
      return response;
    } on DioException catch (e) {
      return ServerExceptions.handleError(e);
    }
  }

  /// Delete Method
  Future<dynamic> delete({required String endPoint}) async {
    try {
      final response = await dio.delete(endPoint);
      return response;
    } on DioException catch (e) {
      return ServerExceptions.handleError(e);
    }
  }

}
