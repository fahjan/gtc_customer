import 'package:dio/dio.dart';
import 'package:gtc_customer/core/constants/strings_app.dart';
import 'package:gtc_customer/features/data/dataseorse/remote/remote_connections_abstract.dart';
import 'package:gtc_customer/features/data/Model/base_register_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RegisterDio{
  late Dio _dio;

  static RegisterDio? _instance;

  RegisterDio._() {
    _dio = Dio(
      BaseOptions(
        baseUrl: StringsApp.baseUrl,
        contentType: StringsApp.contentType,
      ),
    );
    _dio.interceptors.add(PrettyDioLogger());
// customization
    _dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
  }

  factory RegisterDio() {
    return _instance ??= RegisterDio._();
  }

  @override
  // TODO: implement remoteConnection
  Dio get dio => _dio;
}
