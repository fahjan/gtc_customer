import 'package:dio/src/response.dart' as dioResponse;
import '../../../../../core/constants/strings_app.dart';
import '../../../../../core/exceptions/custom_exceptions.dart';
import '../../../../../core/storages/remote_storage/remote_connection_dio.dart';
import 'request_order_remote_abstract.dart';
import '../../model/base_model/base_model.dart';
import '../../model/base_model/data_model.dart';

class RequestOrderRemoteDio extends RequestOrderRemoteAbstract {
  
  final RemoteConnectionDio _remote;
  RequestOrderRemoteDio(this._remote);

  @override
  Future<List<DataModel>> getListOfData() async {
    
    dioResponse.Response<dynamic> response = await _remote.dio.get(StringsApp.marchatsPath);

    if (response.statusCode != 200) {
      throw ServerNotAvaiableException();
    }

    return BaseModel.fromJson(response.data).data;
  }

  @override
  makeOrder() {}
}
