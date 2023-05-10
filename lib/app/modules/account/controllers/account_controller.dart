import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../../routes/app_pages.dart';
import '../../initial/controllers/initial_controller.dart';

class AccountController extends GetxController {
  var name = "".obs;
  final box = GetStorage();

  AccountController();

  String getName() {
    Map<String, dynamic> jwtDecodedToken =
        JwtDecoder.decode(box.read('token')!);
    name.value = jwtDecodedToken['name'];
    return name.value;
  }

  @override
  void onInit() async {
    await GetStorage.init('token');

    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
