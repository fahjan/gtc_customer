import '../../data/model/base_model/base_model.dart';
import '../entities/base_entity.dart';
import 'data_mapper.dart';

extension BaseModelMapper on BaseModel {
  BaseEntity toEntity() {
    return BaseEntity(
      data: data.map((e) => e.toEntity()).toList(),
    );
  }
}
