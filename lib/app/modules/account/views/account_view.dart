import 'package:flutter/material.dart';
import 'package:frontend/app/modules/account/account.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../routes/app_pages.dart';

class AccountView extends GetView<AccountController> {
  GetStorage box = GetStorage();

  @override
  Widget build(BuildContext context) {
    final AccountController c = Get.put(AccountController());

    return Scaffold(
        body: Container(
      color: Color(0xFFFFF5E1),
      child: Column(children: [
        Expanded(
            flex: 4,
            child: Container(
              child: Center(
                child: Image.asset('assets/images/splash/logo_splash.png'),
              ),
            )),
        Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Bienvenido',
                    style: TextStyle(
                        fontFamily: 'Poppins-Bold',
                        color: Color(0xFF0E4B5B),
                        fontSize: 40),
                  ),
                  Text(
                    c.getName(),
                    style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        color: Color(0xFF0E4B5B),
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Pet Sitters: Test desarrollador Full Stack',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins-light',
                        color: Color(0xFF0E4B5B),
                        fontSize: 25),
                  ),
                ],
              ),
            )),
        Expanded(
            flex: 3,
            child: Container(
              child: Center(
                child: GestureDetector(
                  onTap: () =>
                      {box.remove('token'), Get.toNamed(Routes.INITIAL)},
                  child: Container(
                    width: Get.width * 0.85,
                    height: Get.height * 0.06,
                    decoration: const BoxDecoration(
                        color: Color(0xFFEFA60B),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Center(
                      child: Text(
                        'Salir',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ))
      ]),
    ));
  }
}
