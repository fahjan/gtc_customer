import 'package:dartz/dartz.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';
import 'package:gtc_customer/features/request_order/domain/entities/data_entity.dart';

abstract class RequestOrderRepositoriy {
  Future<Either<Failure, List<DataEntity>>> getListOfRestaurant();
  makeOrder();
}
