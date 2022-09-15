


import 'package:dartz/dartz.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';

import '../repositories/request_order_repositoriy.dart';

class MakeOrderUsecase {
  RequestOrderRepositoriy _requestOrderRepositoriy;

  MakeOrderUsecase(this._requestOrderRepositoriy);

  Future<Either<Failure, Unit>> call() async {
    return await _requestOrderRepositoriy.makeOrder();
  }
}
