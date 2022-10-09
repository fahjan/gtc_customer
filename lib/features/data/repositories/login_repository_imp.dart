import 'package:dartz/dartz.dart';
import 'package:gtc_customer/core/exceptions/custom_exceptions.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';
import 'package:gtc_customer/core/helper/helper_app.dart';
import 'package:gtc_customer/features/data/dataseorse/remote/remote_connections_abstract.dart';
import 'package:gtc_customer/features/data/model/login_model/Base_model_login.dart';
import 'package:gtc_customer/features/domain/Entities/login_entites/Base_entity_login.dart';
import 'package:gtc_customer/features/domain/repositories/login_rep.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class LoginRepositoryImp extends LoginRepository {
  RemoteConnectionsAbstract _remoteConnectionsAbstract;

  LoginRepositoryImp(this._remoteConnectionsAbstract);

  @override
  Future<Either<Failure, BaseEntityLogin>> login(
    String email,
    String password,
    String onesignalId,
  ) async {
    if (await HelperApp.isConnected()) {
      // TODO : FETCH FROM PHOTO API
      try {
        BaseModelLogin baseWeatherModel = await _remoteConnectionsAbstract.login(email, password, onesignalId);
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
