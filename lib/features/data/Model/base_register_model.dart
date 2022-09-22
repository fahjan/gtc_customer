import 'package:gtc_customer/features/domain/Entities/register_entites/base_entity_register.dart';

class BaseRegisterModel extends BaseEntityRegister{
  BaseRegisterModel({required super.data, required super.message});
  factory BaseRegisterModel.fromJson(Map<String, dynamic> json) {

    return BaseRegisterModel(
        data: json['data'],
        message: json['message']
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "data": super.data,
      "message": super.message,
    };
  }
}