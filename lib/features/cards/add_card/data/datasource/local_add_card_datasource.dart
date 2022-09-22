import 'package:gtc_customer/features/cards/add_card/data/datasource/add_card_datasource_abstract.dart';
import 'package:gtc_customer/features/cards/add_card/data/model/add_card_model.dart';

class AddCardDatasourceLocal extends AddCardDatasourceAbstract<AddCardModel> {
  @override
  Future<void> addCard(model) async {
    return;
  }
}
