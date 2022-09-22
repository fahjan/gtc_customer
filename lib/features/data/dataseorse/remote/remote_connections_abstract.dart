import 'package:gtc_customer/features/data/Model/base_register_model.dart';
import 'package:gtc_customer/features/domain/Entities/register_entites/base_entity_register.dart';

abstract class RemoteConnectionsAbstract<Remote> {
  Remote get remoteConnection;

  Future<BaseRegisterModel> register(String name,
      String email, String mobile, String password,
      String passwordConfirmation);
}
