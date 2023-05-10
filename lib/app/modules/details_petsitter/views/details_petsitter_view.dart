import 'package:frontend/app/modules/login/login.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../data/providers/petsitters/petsitters.dart';
import '../../../data/repositories/petsitters/petsitters.dart';
import '../../petsitters/controllers/petsitters_controller.dart';
import '../details_petsitter.dart';

class DetailsPetsitterView extends GetView<DetailsPetsitterController> {
  DetailsPetsitterView({super.key});

  final PetsittersController c = Get.put(PetsittersController(
      repository:
          PetsittersRepository(petsittersProvider: PetsittersProvider())));

  @override
  Widget build(BuildContext context) {
    var one = Get.parameters['index'];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/initial/logo2.png',
          height: 40,
        ),
        backgroundColor: Color(0xFF0E4B5B),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFFFF5E1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 250,
                  child: Center(
                      child: CircleAvatar(
                    radius: 100.0,
                    backgroundImage:
                        NetworkImage(c.jsonList[Get.arguments]['photo_url']),
                  ))),
              Container(
                  height: 90,
                  width: Get.width * 0.90,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "${c.jsonList[Get.arguments]['name']} ${c.jsonList[Get.arguments]['lastname']}",
                                  style: TextStyle(
                                      fontFamily: 'Poppins-SemiBold',
                                      fontSize: 22)),
                              Row(
                                children: [
                                  Text('Se ubica en: ',
                                      style: TextStyle(
                                          fontFamily: 'Poppins-bold',
                                          fontSize: 13)),
                                  Text('Culiacan Sinaloa',
                                      style: TextStyle(
                                          fontFamily: 'Poppins-regular',
                                          fontSize: 13)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('4.75',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Bold',
                                      fontSize: 25)),
                              Text('⭐',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-SemiBold',
                                      fontSize: 25))
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
              Container(
                  height: 130,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/petsitter/dog.png',
                              height: 40,
                            ),
                            Text('Perros')
                          ],
                        ),
                      ),
                      Container(
                        width: 2,
                        height: 70,
                        color: Colors.black,
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/petsitter/cat.png',
                              height: 40,
                            ),
                            Text('Gatos')
                          ],
                        ),
                      ),
                      Container(
                        width: 2,
                        height: 70,
                        color: Colors.black,
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/petsitter/bird.png',
                              height: 40,
                            ),
                            Text('Aves')
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                height: 150,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: Get.width * 0.9,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Hospedaje',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-semibold',
                                      fontSize: 15),
                                ),
                                Text(
                                  'desde \$300',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-semibold',
                                      fontSize: 15),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'en casa del cuidador,',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-regular',
                                      fontSize: 13),
                                ),
                                Text(
                                  'Por noche',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-regular',
                                      fontSize: 13),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: Get.width * 0.9,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Guarderia de dia',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-semibold',
                                      fontSize: 15),
                                ),
                                Text(
                                  'desde \$200',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-semibold',
                                      fontSize: 15),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'en guarderia del cuidador',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-regular',
                                      fontSize: 13),
                                ),
                                Text(
                                  'desde \$200',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-regular',
                                      fontSize: 13),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
              Container(
                  height: 55,
                  width: Get.width * 0.85,
                  decoration: const BoxDecoration(
                      color: Color(0xFFEFA60B),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Center(
                      child: Text(
                    'Hazme una pregunta',
                    style: TextStyle(
                        fontFamily: 'Poppins-bold',
                        color: Colors.white,
                        fontSize: 18),
                  ))),
              SizedBox(
                height: 15,
              ),
              Container(
                  height: 55,
                  width: Get.width * 0.85,
                  decoration: const BoxDecoration(
                      color: Color(0xFF0E4B5B),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Center(
                      child: Text(
                    'Contratar a Scarlette',
                    style: TextStyle(
                        fontFamily: 'Poppins-bold',
                        color: Colors.white,
                        fontSize: 18),
                  ))),
              Container(
                height: 200,
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: [Text('Reviews')],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
