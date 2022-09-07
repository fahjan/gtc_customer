import 'package:equatable/equatable.dart';

class DataEntity extends Equatable {
  final int id;
  final String restaurantName;
  final String logo;

  const DataEntity(
      {required this.id, required this.restaurantName, required this.logo});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, restaurantName, logo];
}
