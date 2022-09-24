import 'package:dartz/dartz.dart';
import 'package:gtc_customer/core/exceptions/custom_exceptions.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';
import 'package:gtc_customer/core/helper/helper_app.dart';
import 'package:gtc_customer/features/data/dataseorse/remote/remote_connections_abstract.dart';
import 'package:gtc_customer/features/domain/Entities/register_entites/base_entity_register.dart';
import 'package:gtc_customer/features/domain/repositories/register_rep.dart';

class RegisterRepositoryImp extends RegisterRepository {
  RemoteConnectionsAbstract _remoteConnectionsAbstract;

  RegisterRepositoryImp(this._remoteConnectionsAbstract);


  @override
  Future<Either<Failure, BaseEntityRegister>> register(String name,
      String email, String mobile, String password,
      String passwordConfirmation) async {
    if (await HelperApp.isConnected()) {
      // TODO : FETCH FROM PHOTO API
      try {
        BaseEntityRegister baseWeatherModel = await _remoteConnectionsAbstract
            .register(name, email, mobile, password, passwordConfirmation);
        return right(baseWeatherModel);
      } on ServerNotAvailableException {
        return left(ServerNotAvailableFailure('weather server is down'));
      }
    } else {
      // TODO : THROW EXCEEPTION;
      return left(
          InternetNotAvailableFailure('please check internet connection'));
    }
  }
}