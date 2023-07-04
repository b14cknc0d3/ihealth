import 'package:dio/dio.dart';

///Dio Helper Class
class DioHelper {
  static final DioHelper _singleton = DioHelper._internal();
  late Dio _dio;

  factory DioHelper() {
    return _singleton;
  }

  Dio get dioInstance => _dio;

  DioHelper._internal() {
    _dio = Dio();
    // Add any global configurations or interceptors here
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }
}
