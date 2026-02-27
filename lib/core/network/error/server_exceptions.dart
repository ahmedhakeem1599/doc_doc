import 'package:dio/dio.dart';
import 'error_model.dart';
import 'failure.dart';

class ServerExceptions {
  static Failure handleError(DioException error){

    /// Check if Back-End Provides Error Message
    final data = error.response?.data;

    if (data is Map<String, dynamic>) {
      final errorModel = ErrorModel.fromJson(data);

      return Failure(
        message: errorModel.message,
        statusCode: error.response?.statusCode,
        errors: errorModel.errors,
      );
    }


    if (error is Failure) {
      return Failure(message: error.toString());
    }

    /// If Back-End Does Not Provide Error Message
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return Failure(message: "Connection timeout with API server");

      case DioExceptionType.sendTimeout:
        return Failure(message: "Send timeout with API server");

      case DioExceptionType.receiveTimeout:
        return Failure(message: "Receive timeout with API server");

      case DioExceptionType.connectionError:
        return Failure(message: "No Internet connection, Please Check your Internet Connection",);

      case DioExceptionType.badCertificate:
        return Failure(message: "Invalid SSL certificate");

      case DioExceptionType.cancel:
        return Failure(message: "Request to API server was cancelled");

      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode ?? 0;

        switch (statusCode) {
          case 400:
            return Failure(message: "Bad request");
          case 401:
            return Failure(message: "Unauthorized access");
          case 403:
            return Failure(message: "Forbidden request");
          case 404:
            return Failure(message: "Resource not found");
          case 409:
            return Failure(message: "Conflict with server data");
          case 429:
            return Failure(message: "Too many requests, please try again later.",);
          case 500:
            return Failure(message: "Internal server error");
          case 502:
            return Failure(message: "Bad gateway");
          case 503:
            return Failure(message: "Service unavailable");
          case 504:
            return Failure(message: "Gateway timeout");
          default:
            return Failure(
              message: "Received invalid status code: $statusCode",
            );
        }

      case DioExceptionType.unknown:
        if (error.message != null && error.message!.contains("SocketException")) {
          return Failure(message: "No Internet connection");
        }
        return Failure(
          message: error.message ?? "Unexpected error occurred",
        );
    }
  }
}