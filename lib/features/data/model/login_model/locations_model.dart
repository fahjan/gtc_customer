import 'package:equatable/equatable.dart';
import 'package:gtc_customer/features/domain/Entities/login_entites/locations_entity.dart';

class LocationsModel extends LocationsEntity {
  LocationsModel({
    required super.id,
    required super.createdAt,
    required super.updatedAt,
    required super.deletedAt,
    required super.userId,
    required super.longitude,
    required super.latitude,
    required super.address,
    required super.title,
    required super.defaultAt,
    required super.postcode,
    required super.street,
  });
}
