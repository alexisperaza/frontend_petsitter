import 'package:get/get.dart';

import '../controllers/details_petsitter_controller.dart';

class DetailsPetsittersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsPetsitterController>(
      () => DetailsPetsitterController(),
      fenix: true,
    );
  }
}
