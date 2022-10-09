import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';
import 'package:gtc_customer/features/domain/Entities/login_entites/Base_entity_login.dart';
import 'package:gtc_customer/features/domain/usecases/login_usecase.dart';

class LoginController extends GetxController {
  final LoginUescase _loginUescase;

  LoginController(this._loginUescase);

  late Rx<BaseEntityLogin> baseEntityLogin;

  Rx<bool> isLoading = false.obs;
  Rx<String> message = ''.obs;

  void login(
    String email,
    String password,
    String onesignalId,
  ) async {
    isLoading.value = true;
    Either<Failure, BaseEntityLogin> resp = await _loginUescase.call(
      email,
      password,
      onesignalId,
    );
    resp.fold((l) {
      message.value = l.message;
      isLoading.value = false;
    }, (r) {
      baseEntityLogin.value = r;
      isLoading.value = false;
    });
  }
}
