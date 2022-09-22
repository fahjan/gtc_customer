import 'package:get/get.dart';
import 'package:gtc_customer/core/storages/remote_storage/remote_connection_dio.dart';
import 'package:gtc_customer/core/storages/remote_storage/remote_connections_abstract.dart';

class MyPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RemoteConnectionsAbstract>(() => RemoteConnectionDio());
  }
}
