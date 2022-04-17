import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NetworkUtils {
  static Dio getDioClientConfiguration(String url) {
    final dio = Dio(BaseOptions(
        baseUrl: url,
        contentType: "application/json",
        connectTimeout: 10 * 1000,
        receiveTimeout: 60 * 1000,
        queryParameters: {'key': 'f7f7c631deff40209334c3b223e7ed6b'}));
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true));
    return dio;
  }
}
