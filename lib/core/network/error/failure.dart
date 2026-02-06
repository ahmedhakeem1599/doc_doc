class Failure {
  final String errorMessage;
  final int? statusCode;

  Failure({required this.errorMessage, this.statusCode});

  @override
  String toString() {
    return 'Failure(errMessage: $errorMessage, statusCode: $statusCode)';
  }
}