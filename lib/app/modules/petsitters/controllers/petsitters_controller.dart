import 'package:frontend/app/data/models/petsitters/petsitters.dart';
import 'package:frontend/app/data/repositories/petsitters/petsitters.dart';
import 'package:get/get.dart';

class PetsittersController extends GetxController {
  var tabIndex = 0.obs;
  var jsonList;

  final PetsittersRepository repository;
  PetsittersController({required this.repository});

  getPetsitters() async {
    try {
      var result = await repository.getPetsitters();
      jsonList = result;
      print(jsonList);
    } catch (e) {
      print("Error: ${e}");
    }
  }

  @override
  void onInit() {
    getPetsitters();

    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
