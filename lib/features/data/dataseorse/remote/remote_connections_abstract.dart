import 'package:dio/dio.dart';
import 'package:gtc_customer/features/data/Model/base_register_model.dart';
import 'package:gtc_customer/features/data/dataseorse/remote/register_dio.dart';
import 'package:gtc_customer/features/data/model/login_model/Base_model_login.dart';
import 'package:gtc_customer/features/domain/Entities/login_entites/base_entity_login.dart';

abstract class RemoteConnectionsAbstract {
  Future<BaseRegisterModel> register(String name, String email, String mobile,
      String password, String passwordConfirmation);

  Future<BaseModelLogin> login(
      String email, String password, String onesignalId);
}

class RemoteConnectionDio extends RemoteConnectionsAbstract {
  RegisterDio _registerDio;

  RemoteConnectionDio(this._registerDio);

  @override
  Future<BaseRegisterModel> register(String name, String email, String mobile,
      String password, String passwordConfirmation) async {
    var rep = await _registerDio.dio.post('register', data: {
      'name': name,
      'email': email,
      'mobile': mobile,
      'password_confirmation': passwordConfirmation,
      'password': password,
    });
    return rep.data;
  }

  @override
  Future<BaseModelLogin> login(
      String email, String password, String onesignalId) async {
    var rep = await _registerDio.dio.post('login', data: {
      'email': email,
      'password': password,
      'onesignal_id': onesignalId,
    });
    return rep.data;
  }
}
