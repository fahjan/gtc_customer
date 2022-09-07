import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../../data/repositories/request_repositoriy_imp.dart';
import '../entities/data_entity.dart';
import '../repositories/request_order_repositoriy.dart';

class ListDataUsecases {
  RequestOrderRepositoriy _requestOrderRepositoriy;

  ListDataUsecases(this._requestOrderRepositoriy);

  Future<Either<Failure, List<DataEntity>>> call() {
    return _requestOrderRepositoriy.getListOfRestaurant();
  }
}
