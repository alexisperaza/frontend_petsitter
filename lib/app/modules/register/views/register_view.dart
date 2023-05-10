import 'package:frontend/app/modules/register/controllers/register_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../routes/app_pages.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

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
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  Text(
                    'Crea tu cuenta',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins-Bold',
                        fontSize: 30.0),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                      controller: controller.nameCtrl,
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
                          labelText: 'Nombre',
                          floatingLabelStyle: TextStyle(
                              color: Colors.black,
                              backgroundColor: Color(0xFFEFA60B)))),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      controller: controller.lastNameCtrl,
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
                          labelText: 'Apellido',
                          floatingLabelStyle: TextStyle(
                              color: Colors.black,
                              backgroundColor: Color(0xFFEFA60B)))),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      controller: controller.addressCtrl,
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
                          labelText: 'Direccion postal',
                          floatingLabelStyle: TextStyle(
                              color: Colors.black,
                              backgroundColor: Color(0xFFEFA60B)))),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      controller: controller.phoneCtrl,
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
                          labelText: 'Telefono',
                          floatingLabelStyle: TextStyle(
                              color: Colors.black,
                              backgroundColor: Color(0xFFEFA60B)))),
                  SizedBox(
                    height: 10,
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
                    height: 10,
                  ),
                  TextField(
                      controller: controller.passwordCtrl,
                      obscureText: true,
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
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => controller.sendRegister(context),
                    child: Container(
                      width: Get.width * 0.85,
                      height: Get.height * 0.06,
                      decoration: const BoxDecoration(
                          color: Color(0xFFEFA60B),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Center(
                        child: Text(
                          'Registrarse',
                          style: TextStyle(
                              color: Colors.white,
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
