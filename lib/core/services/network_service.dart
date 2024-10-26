import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:product_detail/core/exception/netwrok_exception.dart';

class NetworkService {
  final String _baseUrl = 'https://api.melabazaar.com.np/api/v1/';

  Future<dynamic> get(String endpoint) async {
    final url = Uri.parse('$_baseUrl$endpoint');
    final response = await http.get(url);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body);
    } else {
      throw NetworkException.fromStatusCode(response.statusCode);
    }
  }

  Future<dynamic> post(String endpoint, dynamic data) async {
    final url = Uri.parse('$_baseUrl$endpoint');
    final response = await http.post(url, body: jsonEncode(data));

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body);
    } else {
      throw NetworkException.fromStatusCode(response.statusCode);
    }
  }

  Future<dynamic> put(String endpoint, dynamic data) async {
    final url = Uri.parse('$_baseUrl$endpoint');
    final response = await http.put(url, body: jsonEncode(data));

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body);
    } else {
      throw NetworkException.fromStatusCode(response.statusCode);
    }
  }
}
