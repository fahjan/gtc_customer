import 'package:get/get.dart';
import 'package:gtc_customer/core/storages/remote_storage/remote_connection_dio.dart';
import 'package:gtc_customer/features/request_order/data/data_source/networks/request_order_remote_dio.dart';
import 'package:gtc_customer/features/request_order/data/repositories/request_repositoriy_imp.dart';
import 'package:gtc_customer/features/request_order/domain/usecases/list_data_usecases.dart';
import 'package:gtc_customer/features/request_order/domain/usecases/make_order_usecase.dart';
import 'package:gtc_customer/features/request_order/presentation/controller/order_request_controller.dart';

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
