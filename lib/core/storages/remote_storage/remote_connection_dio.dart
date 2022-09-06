import 'package:dio/dio.dart';
import 'package:gtc_customer/core/constants/strings_app.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RemoteConnectionDio {
  late Dio _dio;

  static RemoteConnectionDio? _instance;

  RemoteConnectionDio._() {
    _dio = Dio(
      BaseOptions(
        baseUrl: StringsApp.baseUrl,
        contentType: StringsApp.contentType,
      ),
    );
    _dio.interceptors.add(PrettyDioLogger());

    _dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
  }

  factory RemoteConnectionDio() {
    return _instance ??= RemoteConnectionDio._();
  }

  Dio get dio => _dio;
}
