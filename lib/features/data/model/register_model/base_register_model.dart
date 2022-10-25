
import 'package:gtc_customer/features/data/model/register_model/data_model.dart';
import 'package:gtc_customer/features/data/model/register_model/errors_model.dart';
import 'package:gtc_customer/features/domain/Entities/register_entites/base_entity_register.dart';

class BaseRegisterModel extends BaseEntityRegister {
  BaseRegisterModel({
    required super.data,
    required super.message,
    required super.error,
  });

  factory BaseRegisterModel.fromJson(Map<String, dynamic> json) {
    return BaseRegisterModel(
        data: DataModel.fromJson(json['data']),
        message: json['message'],
        error: ErrorsModel.fromJson(json['errors']));
  }

  Map<String, dynamic> toJson() {
    return {
      "data": super.data,
      "message": super.message,
      "errors": super.error,
    };
  }
}
