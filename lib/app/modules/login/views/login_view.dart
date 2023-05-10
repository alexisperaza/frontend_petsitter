import 'package:frontend/app/data/providers/login/login.dart';
import 'package:frontend/app/data/repositories/login/login.dart';
import 'package:frontend/app/modules/login/controllers/login_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../routes/app_pages.dart';

class LoginView extends GetView<LoginController> {
  LoginView({super.key});
  final LoginController c = Get.put(LoginController(
      repository: LoginRepository(loginProvider: LoginProvider())));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF0E4B5B),
      body: SafeArea(
        child: Column(children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Image.asset('assets/images/splash/logo_splash.png'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  Text(
                    'Ingresa a tu cuenta',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins-Bold',
                        fontSize: 30.0),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  TextField(
                      controller: controller.emailCtrl,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          labelText: 'Correo electronico',
                          floatingLabelStyle: TextStyle(
                              color: Colors.black,
                              backgroundColor: Color(0xFFEFA60B)))),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                      controller: controller.passwordCtrl,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          labelText: 'Contraseña',
                          floatingLabelStyle: TextStyle(
                              color: Colors.black,
                              backgroundColor: Color(0xFFEFA60B)))),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontFamily: 'Poppins-regular',
                        fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => controller.sendLogin(context),
                    child: Container(
                      width: Get.width * 0.85,
                      height: Get.height * 0.06,
                      decoration: const BoxDecoration(
                          color: Color(0xFFEFA60B),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Center(
                        child: Text(
                          'Ingresar',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    child: const Text(
                      '¿Aún no te has registrado?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.REGISTER),
                    child: Container(
                      width: Get.width * 0.85,
                      height: Get.height * 0.06,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFEFA60B)),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Center(
                        child: Text(
                          'Crear cuenta',
                          style: TextStyle(
                              color: Color(0xFFEFA60B),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}
