import 'package:dio/src/response.dart';
import 'package:get/get.dart';
import 'package:gtc_customer/core/constants/strings_app.dart';
import 'package:gtc_customer/core/exceptions/custom_exceptions.dart';
import 'package:gtc_customer/core/storages/remote_storage/remote_connection_dio.dart';
import 'package:gtc_customer/features/request_order/data/data_source/networks/request_order_remote_abstract.dart';
import 'package:gtc_customer/features/request_order/data/model/base_model/base_model.dart';
import 'package:gtc_customer/features/request_order/data/model/base_model/data_model.dart';

class RequestOrderRemoteDio extends RequestOrderRemoteAbstract {
 
  RemoteConnectionDio _remote;

  RequestOrderRemoteDio(this._remote);

  @override
  Future<List<DataModel>> getListOfData() async {
    var response =   await _remote.dio.get(StringsApp.marchatsPath);

    if(response.statusCode!=200){
      throw ServerNotAvaiableException();
    }

    return BaseModel.fromJson(response.data).data;

  }

  @override
  makeOrder() {

  }
}
