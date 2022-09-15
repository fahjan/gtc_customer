import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../entities/data_entity.dart';

abstract class RequestOrderRepositoriy {
  Future<Either<Failure, List<DataEntity>>> getListOfRestaurant();
  Future<Either<Failure, Unit>> makeOrder();
}
