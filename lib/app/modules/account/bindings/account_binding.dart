import 'package:frontend/app/modules/account/account.dart';
import 'package:get/get.dart';

class AccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountController>(
      () => AccountController(),
      fenix: true,
    );
  }
}
