import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../constants/strings_app.dart';

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

    _dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        responseHeader: false,
        responseBody : false,
        error: true,
        maxWidth: 90));
  }

  factory RemoteConnectionDio() {
    return _instance ??= RemoteConnectionDio._();
  }

  Dio get dio => _dio;
}
