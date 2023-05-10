import 'package:frontend/app/data/providers/petsitters/petsitters.dart';
import 'package:frontend/app/data/repositories/petsitters/petsitters.dart';
import 'package:get/get.dart';

import '../controllers/petsitters_controller.dart';

class PetsittersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetsittersController>(
      () => PetsittersController(
          repository:
              PetsittersRepository(petsittersProvider: PetsittersProvider())),
      fenix: true,
    );
  }
}
