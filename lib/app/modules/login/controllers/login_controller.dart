import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/repositories/login/login.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  late TextEditingController nameCtrl, emailCtrl, passwordCtrl;

  final LoginRepository repository;
  LoginController({required this.repository});
  final box = GetStorage();

  sendLogin(context) async {
    Map<String, String> data = {
      "email": emailCtrl.text.trim(),
      "passworduser": passwordCtrl.text.trim(),
    };

    try {
      var result = await repository.login(data);
      if (result["Status"] == "Success") {
        var myToken = result['token'];
        box.write('token', myToken);
        Get.toNamed(Routes.HOME);
      }
    } catch (e) {
      print("Error: ${e}");
    }
  }

  @override
  void onInit() {
    emailCtrl = TextEditingController();
    passwordCtrl = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailCtrl.dispose();
    passwordCtrl.dispose();
  }
}
