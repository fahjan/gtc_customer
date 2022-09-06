import 'package:json_annotation/json_annotation.dart';

part 'code_generated/data_model.g.dart';

@JsonSerializable()
class DataModel {
  final int id;
  @JsonKey(name: 'restaurant_name')
  final String restaurantName;
  final String logo;

  const DataModel({required this.id, required this.restaurantName, required this.logo});

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
