import 'package:dartz/dartz.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';
import 'package:gtc_customer/features/domain/Entities/login_entites/Base_entity_login.dart';

abstract class LoginRepository {
  Future<Either<Failure, BaseEntityLogin>> login(
    String email,
    String password,
    String onesignalId,
  );
}
