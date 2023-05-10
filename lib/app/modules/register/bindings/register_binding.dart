import 'package:get/get.dart';

import '../../../data/providers/register/register.dart';
import '../../../data/repositories/register/register.dart';
import '../controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(
        repository: RegisterRepository(
          authServices: RegisterApi(),
        ),
      ),
      fenix: true,
    );
  }
}
