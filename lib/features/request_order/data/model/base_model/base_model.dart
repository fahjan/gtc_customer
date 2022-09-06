import 'package:equatable/equatable.dart';
import 'package:gtc_customer/features/request_order/domain/entities/base_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data_model.dart';

part 'base_model.g.dart';

@JsonSerializable()
class BaseModel extends BaseEntity {

  BaseModel({required super.data});

  factory BaseModel.fromJson(Map<String, dynamic> json) {
    return _$BaseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BaseModelToJson(this);


}
