import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/custom_exceptions.dart';
import '../../../../core/exceptions/failure.dart';
import '../../../../core/utils/helpers.dart';
import '../data_source/networks/request_order_remote_abstract.dart';
import '../model/base_model/data_model.dart';
import '../../domain/entities/data_entity.dart';
import '../../domain/mappers/data_mapper.dart';
import '../../domain/repositories/request_order_repositoriy.dart';

class RequestOrderRepositoriyImp extends RequestOrderRepositoriy {
  RequestOrderRemoteAbstract _remoteAbstract;

  RequestOrderRepositoriyImp(this._remoteAbstract);

  @override
  Future<Either<Failure, List<DataEntity>>> getListOfRestaurant() async {
    if (await Helpers.isConnectedInternet()) {
      try {
        List<DataModel> listOfDataModel = await _remoteAbstract.getListOfData();

        List<DataEntity> listOfDataEntity =
            listOfDataModel.map((e) => e.toEntity()).toList();
        return right(listOfDataEntity);
      } on ServerNotAvaiableException {
        return left(ServerNotAvaiableFailure());
      }
    } else {
      return left(InternetNotAvaiableFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> makeOrder() async {
    if (await Helpers.isConnectedInternet()) {
      try {
          await  _remoteAbstract.makeOrder();

        return right(unit);
      } on ServerNotAvaiableException {
        return left(ServerNotAvaiableFailure());
      }
    } else {
      return left(InternetNotAvaiableFailure());
    }
  }
}
