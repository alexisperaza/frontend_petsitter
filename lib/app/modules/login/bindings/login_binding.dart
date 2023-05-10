import 'package:frontend/app/data/providers/login/login.dart';
import 'package:frontend/app/data/repositories/login/login.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(
          repository: LoginRepository(loginProvider: LoginProvider())),
      fenix: true,
    );
  }
}
