import '../../data/model/base_model/data_model.dart';
import '../entities/data_entity.dart';

extension DataModelMapper on DataModel {
  DataEntity toEntity() {
    return DataEntity(id: id, restaurantName: restaurantName, logo: logo);
  }
}
