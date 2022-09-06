import 'package:dartz/dartz.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';
import 'package:gtc_customer/features/request_order/domain/entities/data_entity.dart';
import 'package:gtc_customer/features/request_order/domain/repositories/request_repositoriy.dart';

class ListDataUsecases {
  RequestOrderRepositoriy requestOrderRepositoriy;

  ListDataUsecases({required this.requestOrderRepositoriy});

  Future<Either<Failure, List<DataEntity>>> call() {
    return requestOrderRepositoriy.getListOfRestaurant();
  }
}
