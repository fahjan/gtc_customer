import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';
import 'package:gtc_customer/features/domain/Entities/register_entites/base_entity_register.dart';
import 'package:gtc_customer/features/domain/usecases/register_usecase.dart';

class RegisterController extends GetxController {
  RegisterUescase _registerUescase;

  RegisterController(this._registerUescase);

  Rx<BaseEntityRegister> baseEntityRegister = BaseEntityRegister.empty().obs;
  Rx<bool> isLoading = false.obs;
  Rx<String> message = ''.obs;

  void register(
    String name,
    String email,
    String mobile,
    String password,
    String passwordConfirmation,
  ) async {
    isLoading.value = true;
    Either<Failure, BaseEntityRegister> resp = await _registerUescase.call(
      name,
      email,
      mobile,
      password,
      passwordConfirmation,
    );
    resp.fold((l) {
      this.message.value = l.message;
      isLoading.value = false;
    }, (r) {
      this.baseEntityRegister.value = r;
      isLoading.value = false;
    });
  }
}
