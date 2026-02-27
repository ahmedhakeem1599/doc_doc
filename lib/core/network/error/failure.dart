class Failure {
  final String message;
  final int? statusCode;
  final Map<String, dynamic>? errors;

  Failure({
    required this.message,
    this.statusCode,
    this.errors,
  });

  @override
  String toString() {
    return 'Failure(message: $message, statusCode: $statusCode)';
  }
}
