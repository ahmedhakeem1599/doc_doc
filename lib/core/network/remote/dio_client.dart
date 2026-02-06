import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient{
  late final Dio _dio;

  DioClient() {

    /// Options
    _dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        headers: {}
      )
    );

    /// Interceptors
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {},
        onResponse: (response, handler) {},
        onError: (DioException e, handler) {},
      ),
    );

    /// Pretty Dio Logger
    _dio.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        responseBody: true,
      )
    );
  }

  Dio get dio => _dio;
}