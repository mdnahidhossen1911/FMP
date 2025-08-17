final String apiResponseString = '''
import 'status.dart';

class ApiResponse<T> {
  Status status;
  T? data;
  String? message;

  ApiResponse.loading([this.message]) : status = Status.loading;
  ApiResponse.completed(this.data) : status = Status.completed;
  ApiResponse.error([this.message]) : status = Status.error;
}
''';
