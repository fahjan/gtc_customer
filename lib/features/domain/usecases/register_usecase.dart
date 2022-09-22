import 'package:dartz/dartz.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';
import 'package:gtc_customer/features/domain/Entities/register_entites/base_entity_register.dart';
import 'package:gtc_customer/features/domain/repositories/register_rep.dart';

class RegisterUescase {
  RegisterRepository _registerRepository;

  RegisterUescase(this._registerRepository);

  Future<Either<Failure, BaseEntityRegister>> call(
    String name,
    String email,
    String mobile,
    String password,
    String passwordConfirmation,
  ) async {
    return await _registerRepository.register(
        name, email, mobile, password, passwordConfirmation);
  }
}
