import 'package:gtc_customer/features/domain/Entities/register_entites/data_entity.dart';

class DataModel extends DataEntity {
  DataModel({
    required super.id,
    required super.name,
    required super.username,
    required super.email,
    required super.emailVerifiedAt,
    required super.mobile,
    required super.createdAt,
    required super.updatedAt,
    required super.deletedAt,
    required super.address,
    required super.longitude,
    required super.latitude,
    required super.stripeCustomerId,
    required super.avatar,
    required super.onesignalplayerid,
    required super.apiToken,
    required super.customerApi,
    required super.viewed,
    required super.social,
    required super.socialId,
    required super.locations,
  });

/*      "id
        "name
        "username
        "email
        "email_verified_at
        "mobile
        "created_at
        "updated_at
        "deleted_at
        "address
        "longitude
        "latitude
        "stripe_customer_id
        "avatar
        "ONE_SIGNAL_PLAYER_ID
        "api_token
        "customer_api
        "viewed
        "social
        "social_id
        "locations
        */
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      emailVerifiedAt: json['email_verified_at'],
      mobile: json['mobile'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      deletedAt: json['deleted_at'],
      address: json['address'],
      longitude: json['longitude'],
      latitude: json['latitude'],
      stripeCustomerId: json['stripe_customer_id'],
      avatar: json['avatar'],
      onesignalplayerid: json['ONE_SIGNAL_PLAYER_ID'],
      apiToken: json['api_token'],
      customerApi: json['customer_api'],
      viewed: json['viewed'],
      social: json['social'],
      socialId: json['social_id'],
      locations: List.of(json['locations']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = super.id;
    data['name'] = super.name;
    data['username'] = super.username;
    data['email'] = super.email;
    data['email_verified_at'] = super.emailVerifiedAt;
    data['mobile'] = super.mobile;
    data['created_at'] = super.createdAt;
    data['updated_at'] = super.updatedAt;
    data['deleted_at'] = super.deletedAt;
    data['address'] = super.address;
    data['longitude'] = super.longitude;
    data['latitude'] = super.latitude;
    data['stripe_customer_id'] = super.stripeCustomerId;
    data['avatar'] = super.avatar;
    data['ONE_SIGNAL_PLAYER_ID'] = super.onesignalplayerid;
    data['api_token'] = super.apiToken;
    data['customer_api'] = super.customerApi;
    data['viewed'] = super.viewed;
    data['social'] = super.social;
    data['social_id'] = super.socialId;
    if (super.locations != null) {
      data['locations'] = super.locations!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
