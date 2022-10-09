import 'package:dartz/dartz.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';
import 'package:gtc_customer/features/domain/Entities/login_entites/Base_entity_login.dart';
import 'package:gtc_customer/features/domain/repositories/login_rep.dart';

class LoginUescase {
  LoginRepository _loginRepository;

  LoginUescase(this._loginRepository);

  Future<Either<Failure, BaseEntityLogin>> call(
    String email,
    String password,
    String onesignalId,
  ) async {
    return await _loginRepository.login(
      email,
      password,
      onesignalId,
    );
  }
}
