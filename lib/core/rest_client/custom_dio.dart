import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class CustomDio extends DioForNative {
  CustomDio()
      : super(BaseOptions(
          baseUrl: 'https://my.api.mockaroo.com/',
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 6),
        )) {
    interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      requestHeader: true,
    ));
  }
}
