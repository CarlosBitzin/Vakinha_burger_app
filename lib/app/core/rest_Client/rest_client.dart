import 'package:get/get_connect/connect.dart';

class RestClient extends GetConnect {
  final _backendBaseUrl = 'http://dartweek.academiadoflutter.com.br';

  RestClient() {
    httpClient.baseUrl = _backendBaseUrl;
  }
}

class RestClientExeption implements Exception {
  final int? code;
  final String message;

  RestClientExeption(
    this.message, {
    this.code,
  });

  @override
  String ToString() => 'RestClientException(code : $code, message: $message)';
}
