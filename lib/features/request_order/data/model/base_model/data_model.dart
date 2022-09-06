import 'package:equatable/equatable.dart';
import 'package:gtc_customer/features/request_order/domain/entities/data_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_model.g.dart';

@JsonSerializable()
class DataModel extends DataEntity {

  DataModel({required super.id, required super.restaurantName, required super.logo});

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
  
}
