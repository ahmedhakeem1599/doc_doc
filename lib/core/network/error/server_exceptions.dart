import 'package:dio/dio.dart';
import 'failure.dart';

class ServerExceptions {
  static Failure handleError(DioException error){

    /// Check if Back-End Provides Error Message
    final data = error.response?.data;

    if(data is Map<String, dynamic>){
      final errorMessage = data['message'];
      if(errorMessage != null){
        return Failure(errorMessage: errorMessage);
      }
    }

    /// If Back-End Does Not Provide Error Message
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return Failure(errorMessage: "Connection timeout with API server");

      case DioExceptionType.sendTimeout:
        return Failure(errorMessage: "Send timeout with API server");

      case DioExceptionType.receiveTimeout:
        return Failure(errorMessage: "Receive timeout with API server");

      case DioExceptionType.connectionError:
        return Failure(errorMessage: "No Internet connection, Please Check your Internet Connection",);

      case DioExceptionType.badCertificate:
        return Failure(errorMessage: "Invalid SSL certificate");

      case DioExceptionType.cancel:
        return Failure(errorMessage: "Request to API server was cancelled");

      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode ?? 0;

        switch (statusCode) {
          case 400:
            return Failure(errorMessage: "Bad request");
          case 401:
            return Failure(errorMessage: "Unauthorized access");
          case 403:
            return Failure(errorMessage: "Forbidden request");
          case 404:
            return Failure(errorMessage: "Resource not found");
          case 409:
            return Failure(errorMessage: "Conflict with server data");
          case 429:
            return Failure(errorMessage: "Too many requests, please try again later.",);
          case 500:
            return Failure(errorMessage: "Internal server error");
          case 502:
            return Failure(errorMessage: "Bad gateway");
          case 503:
            return Failure(errorMessage: "Service unavailable");
          case 504:
            return Failure(errorMessage: "Gateway timeout");
          default:
            return Failure(
              errorMessage: "Received invalid status code: $statusCode",
            );
        }

      case DioExceptionType.unknown:
        if (error.message != null && error.message!.contains("SocketException")) {
          return Failure(errorMessage: "No Internet connection");
        }
        return Failure(
          errorMessage: error.message ?? "Unexpected error occurred",
        );
    }
  }
}