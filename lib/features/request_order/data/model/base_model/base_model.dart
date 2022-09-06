import 'package:json_annotation/json_annotation.dart';

import 'data_model.dart';

part 'code_generated/base_model.g.dart';

@JsonSerializable()
class BaseModel {
  final List<DataModel> data;

  const BaseModel({required this.data});

  factory BaseModel.fromJson(Map<String, dynamic> json) {
    return _$BaseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BaseModelToJson(this);
}
