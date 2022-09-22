import 'package:dartz/dartz.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';
import 'package:gtc_customer/features/domain/Entities/register_entites/base_entity_register.dart';

abstract class RegisterRepository {
  Future<Either<Failure, BaseEntityRegister>> register(
    String name,
    String email,
    String mobile,
    String password,
    String passwordConfirmation,
  );
}
