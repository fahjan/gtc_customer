import 'package:dio/dio.dart';
import 'package:gtc_customer/core/storages/remote_storage/remote_connections_abstract.dart';
import 'package:gtc_customer/features/cards/add_card/data/datasource/add_card_datasource_abstract.dart';
import 'package:gtc_customer/features/cards/add_card/data/model/add_card_model.dart';

class AddCardDatasourceApi extends AddCardDatasourceAbstract<AddCardModel> {
  AddCardDatasourceApi(this.dio);
  RemoteConnectionsAbstract<Dio> dio;

  @override
  Future<void> addCard(model) async {
    await dio.remoteConnection.post('/cards', data: model);
  }
}
