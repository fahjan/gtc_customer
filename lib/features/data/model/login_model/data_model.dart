import 'package:equatable/equatable.dart';
import 'package:gtc_customer/features/domain/Entities/login_entites/data_entity.dart';

import 'locations_model.dart';

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
}
