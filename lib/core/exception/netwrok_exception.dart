class NetworkException implements Exception {
  final String message;
  final int statusCode;

  NetworkException({required this.message, required this.statusCode});

  factory NetworkException.fromStatusCode(int statusCode) {
    String message;
    switch (statusCode) {
      case 400:
        message = 'Bad Request';
        break;
      case 401:
        message = 'Unauthorized';
        break;
      case 403:
        message = 'Forbidden';
        break;
      case 404:
        message = 'Not Found';
        break;
      case 500:
        message = 'Internal Server Error';
        break;
      default:
        message = 'Unknown Error';
    }
    return NetworkException(message: message, statusCode: statusCode);
  }
}
