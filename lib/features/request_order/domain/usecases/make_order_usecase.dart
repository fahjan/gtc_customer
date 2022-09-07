


import '../repositories/request_order_repositoriy.dart';

class MakeOrderUsecase {
  RequestOrderRepositoriy _requestOrderRepositoriy;

  MakeOrderUsecase(this._requestOrderRepositoriy);

  call() {
    return _requestOrderRepositoriy.makeOrder();
  }
}
