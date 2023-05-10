import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/repositories/register/register.dart';
import '../../../routes/app_pages.dart';

class RegisterController extends GetxController {
  late TextEditingController nameCtrl,
      lastNameCtrl,
      addressCtrl,
      phoneCtrl,
      emailCtrl,
      passwordCtrl;

  final RegisterRepository repository;
  RegisterController({required this.repository});
  final box = GetStorage();

  sendRegister(context) async {
    Map<String, String> data = {
      "name": nameCtrl.text.trim(),
      "last_name": lastNameCtrl.text.trim(),
      "address": addressCtrl.text.trim(),
      "phone": phoneCtrl.text.trim(),
      "email": emailCtrl.text.trim(),
      "passworduser": passwordCtrl.text.trim(),
    };

    try {
      var result = await repository.register(data);
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
    nameCtrl = TextEditingController();
    emailCtrl = TextEditingController();
    passwordCtrl = TextEditingController();
    lastNameCtrl = TextEditingController();
    phoneCtrl = TextEditingController();
    addressCtrl = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    nameCtrl.dispose();
    emailCtrl.dispose();
    passwordCtrl.dispose();
    lastNameCtrl.dispose();
    phoneCtrl.dispose();
    addressCtrl.dispose();
  }
}
