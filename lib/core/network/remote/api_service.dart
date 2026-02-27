import 'package:dio/dio.dart';
import '../error/server_exceptions.dart';
import 'dio_factory.dart';

class ApiService {
  final Dio dio = DioFactory.getDio();

  /// CRUD Methods

  /// GET
  Future<Response<T>> get<T>({required String endPoint, Map<String, dynamic>? queryParameters,}) async {
    try {
      final response = await dio.get<T>(
        endPoint,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (e) {
      throw ServerExceptions.handleError(e);
    }
  }

  /// POST
  Future<Response<T>> post<T>({required String endPoint, dynamic data}) async {
    try {
      final response = await dio.post<T>(
        endPoint,
        data: data,
      );
      return response;
    } on DioException catch (e) {
      throw ServerExceptions.handleError(e);
    }
  }

  /// PATCH
  Future<Response<T>> patch<T>({required String endPoint, dynamic data}) async {
    try {
      final response = await dio.patch<T>(
        endPoint,
        data: data,
      );
      return response;
    } on DioException catch (e) {
      throw ServerExceptions.handleError(e);
    }
  }

  /// Put
  Future<Response<T>> put<T>({required String endPoint, dynamic data}) async {
    try {
      final response = await dio.put<T>(
        endPoint,
        data: data,
      );
      return response;
    } on DioException catch (e) {
      throw ServerExceptions.handleError(e);
    }
  }

  /// DELETE
  Future<Response<T>> delete<T>({required String endPoint,}) async {
    try {
      final response = await dio.delete<T>(endPoint);
      return response;
    } on DioException catch (e) {
      throw ServerExceptions.handleError(e);
    }
  }

}
