import 'package:breaking_bad/constants/app_strings.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static late final Dio _dio;

  static void init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveTimeout: 10 * 1000,
        connectTimeout: 10 * 1000,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future get({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _dio.get(
      endPoint,
      queryParameters: queryParameters,
    );
  }
}
