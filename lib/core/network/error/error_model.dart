class ErrorModel {
  final String message;
  final int? statusCode;
  final Map<String, dynamic>? errors;

  ErrorModel({
    required this.message,
    this.statusCode,
    this.errors,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      message: json['message'] ?? "Unknown error occurred",
      statusCode: json['statusCode'],
      errors: json['errors'],
    );
  }
}
