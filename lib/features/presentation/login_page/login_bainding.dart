import 'package:get/get.dart';
import 'package:gtc_customer/features/data/dataseorse/remote/register_dio.dart';
import 'package:gtc_customer/features/data/dataseorse/remote/remote_connections_abstract.dart';
import 'package:gtc_customer/features/data/repositories/login_repository_imp.dart';
import 'package:gtc_customer/features/domain/usecases/login_usecase.dart';
import 'package:gtc_customer/features/presentation/login_page/login_controller.dart';

class LoginBainding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => RegisterDio(),
    );
    Get.lazyPut(
      () => RemoteConnectionDio(Get.find<RegisterDio>()),
    );
    Get.lazyPut(
      () => LoginRepositoryImp(Get.find<RemoteConnectionDio>()),
    );
    Get.lazyPut(
      () => LoginUescase(Get.find<LoginRepositoryImp>()),
    );
    Get.lazyPut(() => LoginController(Get.find()));
  }
}
