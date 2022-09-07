import '../../model/base_model/data_model.dart';

abstract class RequestOrderRemoteAbstract {
  Future<List<DataModel>> getListOfData();
  makeOrder();
}
