import 'package:equatable/equatable.dart';

class LocationsEntity extends Equatable {
  LocationsEntity({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.userId,
    required this.longitude,
    required this.latitude,
    required this.address,
    required this.title,
    required this.defaultAt,
    required this.postcode,
    required this.street,
  });

  int id;
  String createdAt;
  String updatedAt;
  dynamic deletedAt;
  int userId;
  String longitude;
  String latitude;
  String address;
  String title;
  String defaultAt;
  String postcode;
  String street;

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        deletedAt,
        userId,
        longitude,
        latitude,
        address,
        title,
        defaultAt,
        postcode,
        street,
      ];
}
