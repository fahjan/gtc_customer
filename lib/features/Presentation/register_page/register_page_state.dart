import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:gtc_customer/features/Presentation/register_page/register_page_controller.dart';
import 'package:gtc_customer/features/data/dataseorse/remote/register_dio.dart';
import 'package:gtc_customer/features/data/dataseorse/remote/remote_connections_abstract.dart';
import 'package:gtc_customer/features/data/repositories/register_repository_imp.dart';
import 'package:gtc_customer/features/domain/usecases/register_usecase.dart';

class RegisterBinding extends Bindings {
  RegisterBinding() {
    ///Initialize variables
  }

  @override
  void dependencies() {
    Get.lazyPut(
          () => RegisterDio(),
    );
    Get.lazyPut(
          () => RemoteConnectionDio(Get.find<RegisterDio>()),
    );
    Get.lazyPut(
          () => RegisterRepositoryImp(Get.find<RemoteConnectionDio>()),
    );
    Get.lazyPut(
          () => RegisterUescase(Get.find<RegisterRepositoryImp>()),
    );
    Get.lazyPut(
      () => RegisterController(Get.find<RegisterUescase>()),
    );
  }
}
