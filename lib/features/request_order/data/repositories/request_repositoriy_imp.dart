import 'package:dartz/dartz.dart';
import 'package:gtc_customer/core/exceptions/custom_exceptions.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';
import 'package:gtc_customer/core/utils/helpers.dart';
import 'package:gtc_customer/features/request_order/data/data_source/networks/request_order_remote_abstract.dart';
import 'package:gtc_customer/features/request_order/data/model/base_model/data_model.dart';
import 'package:gtc_customer/features/request_order/domain/entities/data_entity.dart';
import 'package:gtc_customer/features/request_order/domain/mappers/data_mapper.dart';
import 'package:gtc_customer/features/request_order/domain/repositories/request_order_repositoriy.dart';

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
  makeOrder() {
    throw UnimplementedError();
  }
}
