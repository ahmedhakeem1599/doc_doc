import 'package:dio/dio.dart';
import '../error/server_exceptions.dart';
import 'dio_client.dart';

class ApiService {
  /// Make instance from DioClient
  final DioClient dioClient = DioClient();

  /// CRUD Methods

  /// Get Method
  Future<dynamic> get({required String endPoint, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dioClient.dio.get(endPoint, queryParameters: queryParameters);
      return response;
    } on DioException catch (e) {
      return ServerExceptions.handleError(e);
    }
  }

  /// Post Method
  Future<dynamic> post({required String endPoint, dynamic data}) async {
    try {
      final response = await dioClient.dio.post(endPoint, data: data);
      return response;
    } on DioException catch (e) {
      return ServerExceptions.handleError(e);
    }
  }

  /// Patch Method
  Future<dynamic> updateOnceOrMore({required String endPoint, dynamic data}) async {
    try {
      final response = await dioClient.dio.patch(endPoint, data: data);
      return response;
    } on DioException catch (e) {
      return ServerExceptions.handleError(e);
    }
  }

  /// Put Method
  Future<dynamic> updateAll({required String endPoint, dynamic data}) async {
    try {
      final response = await dioClient.dio.put(endPoint, data: data);
      return response;
    } on DioException catch (e) {
      return ServerExceptions.handleError(e);
    }
  }

  /// Delete Method
  Future<dynamic> delete({required String endPoint}) async {
    try {
      final response = await dioClient.dio.delete(endPoint);
      return response;
    } on DioException catch (e) {
      return ServerExceptions.handleError(e);
    }
  }

}
