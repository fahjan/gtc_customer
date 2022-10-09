import 'package:equatable/equatable.dart';

import 'locations_entity.dart';

class DataEntity extends Equatable {
  DataEntity({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.emailVerifiedAt,
    required this.mobile,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.address,
    required this.longitude,
    required this.latitude,
    required this.stripeCustomerId,
    required this.avatar,
    required this.onesignalplayerid,
    required this.apiToken,
    required this.customerApi,
    required this.viewed,
    required this.social,
    required this.socialId,
    required this.locations,
  });

  int id;
  String name;
  dynamic username;
  String email;
  dynamic emailVerifiedAt;
  String mobile;
  String createdAt;
  String updatedAt;
  dynamic deletedAt;
  dynamic address;
  dynamic longitude;
  dynamic latitude;
  String stripeCustomerId;
  String avatar;
  String onesignalplayerid;
  String apiToken;
  dynamic customerApi;
  String viewed;
  dynamic social;
  dynamic socialId;
  List<LocationsEntity> locations;

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        username,
        email,
        emailVerifiedAt,
        mobile,
        createdAt,
        updatedAt,
        deletedAt,
        address,
        longitude,
        latitude,
        stripeCustomerId,
        avatar,
        onesignalplayerid,
        apiToken,
        customerApi,
        viewed,
        social,
        socialId,
        locations,
      ];
}
