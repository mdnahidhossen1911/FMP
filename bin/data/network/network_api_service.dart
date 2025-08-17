final String networkApiServiceString = '''
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../exceptions/app_exception.dart';
import 'base_api_service.dart';

class NetworkApiService extends BaseApiService {
  @override
  Future<dynamic> get(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      return _processResponse(response);
    } catch (e) {
      throw FetchDataException('No Internet connection');
    }
  }

  @override
  Future<dynamic> post(String url, dynamic data) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        body: jsonEncode(data),
        headers: {'Content-Type': 'application/json'},
      );
      return _processResponse(response);
    } catch (e) {
      throw FetchDataException('No Internet connection');
    }
  }

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      case 400:
        throw BadRequestException(response.body);
      case 401:
      case 403:
        throw UnAuthorException(response.body);
      case 500:
      default:
        throw FetchDataException(
          'Error occurred with code: \${response.statusCode}',
        );
    }
  }
}
''';
