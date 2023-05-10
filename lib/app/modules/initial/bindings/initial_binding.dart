import 'package:frontend/app/modules/initial/initial.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InitialController>(
      () => InitialController(),
      fenix: true,
    );
  }
}
