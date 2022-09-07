import 'package:get/get.dart';
import '../../../../core/storages/remote_storage/remote_connection_dio.dart';
import '../../data/data_source/networks/request_order_remote_dio.dart';
import '../../data/repositories/request_repositoriy_imp.dart';
import '../../domain/usecases/list_data_usecases.dart';
import '../../domain/usecases/make_order_usecase.dart';
import '../controller/order_request_controller.dart';

class OrderRequestPageBinding implements Bindings {
  @override
  void dependencies() {
    
    Get.lazyPut<RemoteConnectionDio>(() => RemoteConnectionDio());

    Get.lazyPut<RequestOrderRemoteDio>(() => RequestOrderRemoteDio(Get.find()));

    Get.lazyPut<RequestOrderRepositoriyImp>(
        () => RequestOrderRepositoriyImp(Get.find<RequestOrderRemoteDio>()));

    Get.lazyPut<ListDataUsecases>(
        () => ListDataUsecases(Get.find<RequestOrderRepositoriyImp>()));

    Get.lazyPut<MakeOrderUsecase>(
        () => MakeOrderUsecase(Get.find<RequestOrderRepositoriyImp>()));

    Get.lazyPut<OrderRequestController>(() => OrderRequestController(
        Get.find<ListDataUsecases>(), Get.find<MakeOrderUsecase>()));
  }
}
