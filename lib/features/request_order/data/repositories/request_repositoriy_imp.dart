import 'package:dartz/dartz.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';
import 'package:gtc_customer/features/request_order/domain/entities/data_entity.dart';
import 'package:gtc_customer/features/request_order/domain/repositories/request_repositoriy.dart';

class RequestOrderRepositoriyImp extends RequestOrderRepositoriy{
  
  
  
  @override
  Future<Either<Failure, List<DataEntity>>> getListOfRestaurant() {
    // TODO: implement getListOfRestaurant
    throw UnimplementedError();
  }

  @override
  makeOrder() {
    // TODO: implement makeOrder
    throw UnimplementedError();
  }

}
