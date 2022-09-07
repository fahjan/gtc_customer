import 'package:dartz/dartz.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';
import 'package:gtc_customer/features/request_order/data/repositories/request_repositoriy_imp.dart';
import 'package:gtc_customer/features/request_order/domain/entities/data_entity.dart';
import 'package:gtc_customer/features/request_order/domain/repositories/request_order_repositoriy.dart';

class ListDataUsecases {
  RequestOrderRepositoriy _requestOrderRepositoriy;

  ListDataUsecases(this._requestOrderRepositoriy);

  Future<Either<Failure, List<DataEntity>>> call() {
    return _requestOrderRepositoriy.getListOfRestaurant();
  }
}
