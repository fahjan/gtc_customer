import 'package:dio/dio.dart';
import 'package:gtc_customer/core/constants/strings_app.dart';
import 'package:gtc_customer/core/storages/remote_storage/remote_connections_abstract.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RemoteConnectionDio extends RemoteConnectionsAbstract<Dio> {
  late Dio _dio;

  static RemoteConnectionDio? _instance;

  RemoteConnectionDio._() {
    _dio = Dio(
      BaseOptions(
        baseUrl: StringsApp.baseUrl,
        contentType: StringsApp.contentType,
        headers: {
          'Authorization':
              'Bearer 347_698jIL2Gyn3TCmn8hG9WrNhh5pmja1S38mZxMw6RtVHmJkHR8DK4DjNH0kfs',
        },
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

  factory RemoteConnectionDio() {
    return _instance ??= RemoteConnectionDio._();
  }

  @override
  Dio get remoteConnection => _dio;
}
