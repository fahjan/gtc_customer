import 'package:json_annotation/json_annotation.dart';



class DataEntity {
  final int id;
  @JsonKey(name: 'restaurant_name')
  final String restaurantName;
  final String logo;

  DataEntity(
      {required this.id, required this.restaurantName, required this.logo});
    
  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, restaurantName, logo];
}
