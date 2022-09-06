


import 'package:gtc_customer/features/request_order/domain/repositories/request_repositoriy.dart';

class MakeOrderUsecase {
  RequestOrderRepositoriy requestOrderRepositoriy;

  MakeOrderUsecase({required this.requestOrderRepositoriy});

  call() {
    return requestOrderRepositoriy.makeOrder();
  }
}
