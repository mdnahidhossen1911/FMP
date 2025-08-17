final String appExceptionString = '''
class AppException implements Exception {
  final String message;
  final String? prefix;

  AppException(this.message, [this.prefix]);

  @override
  String toString() => '\$prefix\$message';
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
    : super(message ?? 'Error During Communication', 'Fetch Data Exception: ');
}

class BadRequestException extends AppException {
  BadRequestException([String? message])
    : super(message ?? 'Invalid Request', 'Bad Request: ');
}

class UnAuthorException extends AppException {
  UnAuthorException([String? message])
    : super(message ?? 'Unauthorized', 'Unauthorized: ');
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message])
    : super(message ?? 'Invalid Input', 'Invalid Input: ');
}
''';
