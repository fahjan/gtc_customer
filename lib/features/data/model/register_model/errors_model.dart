import 'package:gtc_customer/features/data/Model/errors_model.dart';
import 'package:gtc_customer/features/domain/Entities/register_entites/errors_entity.dart';

class ErrorsModel extends ErrorsEntity {
  ErrorsModel({
    required super.email,
    required super.mobile,
    required super.password,
  });

  factory ErrorsModel.fromJson(Map<String, dynamic> json) {
    return ErrorsModel(
      email: json['email'].cast<String>(),
      mobile: json['mobile'].cast<String>(),
      password: json['password'].cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = super.email;
    data['mobile'] = super.mobile;
    data['password'] = super.password;
    return data;
  }
}
