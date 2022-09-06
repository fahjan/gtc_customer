import 'package:gtc_customer/features/request_order/data/model/base_model/base_model.dart';
import 'package:gtc_customer/features/request_order/domain/entities/base_entity.dart';
import 'package:gtc_customer/features/request_order/domain/mappers/data_mapper.dart';

extension BaseModelMapper on BaseModel {
  BaseEntity toEntity() {
    return BaseEntity(
      data: data.map((e) => e.toEntity()).toList(),
    );
  }
}
