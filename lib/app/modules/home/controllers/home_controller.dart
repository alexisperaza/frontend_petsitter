import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  var tabIndex = 1.obs;
  var expiredAuth = false.obs;
  final box = GetStorage();

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() async {
    // await GetStorage.init('token');
    // var expiredAuth = box.hasData('token');
    // super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
