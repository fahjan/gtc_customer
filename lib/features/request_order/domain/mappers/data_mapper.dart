import 'package:gtc_customer/features/request_order/data/model/base_model/data_model.dart';
import 'package:gtc_customer/features/request_order/domain/entities/data_entity.dart';

extension DataModelMapper on DataModel {
  DataEntity toEntity() {
    return DataEntity(id: id, restaurantName: restaurantName, logo: logo);
  }
}
