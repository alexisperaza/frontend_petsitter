import 'package:frontend/app/modules/initial/initial.dart';
import 'package:frontend/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InitialView extends GetView<InitialController> {
  const InitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0E4B5B),
        body: Stack(
          children: [
            Expanded(
              child: PageView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 200),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/initial/onboarding0.jpg'),
                            fit: BoxFit.cover)),
                    child: const Text(
                      'Todo para tu mascota con amor',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF0E4B5B),
                        fontSize: 27,
                        fontFamily: "Poppins-Bold",
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/initial/onboarding1.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/initial/onboarding2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/initial/onboarding3.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Column(children: [
              Container(
                width: Get.width,
                height: Get.height * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 80),
                      child: Image.asset(
                        'assets/images/initial/logo.png',
                        height: 80,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  width: Get.width,
                  height: Get.height * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Get.toNamed(Routes.LOGIN),
                        child: Container(
                          width: Get.width * 0.85,
                          height: Get.height * 0.06,
                          decoration: const BoxDecoration(
                              color: Color(0xFFEFA60B),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: const Center(
                            child: Text(
                              'Iniciar sesión',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.toNamed(Routes.HOME),
                        child: Container(
                          margin: const EdgeInsets.only(top: 30.0),
                          child: const Text(
                            'Crear una cuenta mas tarde',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )),
            ]),
          ],
        ));
  }
}
