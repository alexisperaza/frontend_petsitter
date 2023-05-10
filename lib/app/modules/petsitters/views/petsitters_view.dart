import 'package:frontend/app/data/providers/petsitters/petsitters.dart';
import 'package:frontend/app/data/repositories/petsitters/petsitters.dart';
import 'package:frontend/app/modules/login/login.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../routes/app_pages.dart';
import '../petsitters.dart';

class PetsittersView extends GetView<PetsittersController> {
  PetsittersView({super.key});
  final PetsittersController c = Get.put(PetsittersController(
      repository:
          PetsittersRepository(petsittersProvider: PetsittersProvider())));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/initial/logo2.png',
          height: 40,
        ),
        leading: Container(),
        backgroundColor: Color(0xFF0E4B5B),
      ),
      body: Container(
        color: Color(0xFFFFF5E1),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      child: Text(
                        'Los mejores valorados',
                        style:
                            TextStyle(fontFamily: 'Poppins-bold', fontSize: 15),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  c.jsonList == null ? 0 : c.jsonList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () => Get.toNamed(
                                      Routes.DETAILSPETSITTER,
                                      arguments: index),
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Color(0xFF0E4B5B),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    width: 160,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              flex: 3,
                                              child: Container(
                                                margin:
                                                    EdgeInsets.only(bottom: 5),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: NetworkImage(c
                                                                .jsonList[index]
                                                            ['photo_url']))),
                                              )),
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              c.jsonList[index]['name'],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Poppins-Medium'),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text('⭐⭐⭐⭐⭐'),
                                          ),
                                        ]),
                                  ),
                                );
                              },
                            )))
                  ],
                ))),
            Expanded(
                flex: 2,
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 30,
                      ),
                      child: Text(
                        'Cuidadores',
                        style:
                            TextStyle(fontFamily: 'Poppins-bold', fontSize: 15),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: ListView.builder(
                          itemCount: c.jsonList == null ? 0 : c.jsonList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () => Get.toNamed(Routes.DETAILSPETSITTER,
                                  arguments: index),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                margin: EdgeInsets.only(
                                    left: 15, right: 15, top: 15),
                                height: 100,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(
                                                      c.jsonList[index]
                                                          ['photo_url']))),
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${c.jsonList[index]['name']} ${c.jsonList[index]['lastname']}",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Poppins-semiBold',
                                                      fontSize: 15),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  'Culiacan Sinaloa',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Poppins-regular',
                                                      fontSize: 13),
                                                )
                                              ],
                                            ))),
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  " \$400",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Poppins-semiBold',
                                                      fontSize: 12),
                                                ),
                                                Text(
                                                  "por",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Poppins-regular',
                                                      fontSize: 7),
                                                ),
                                                Text(
                                                  "Hora",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Poppins-semiBold',
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '4.5',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Poppins-semiBold',
                                                      fontSize: 15),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  '⭐',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Poppins-regular',
                                                      fontSize: 20),
                                                )
                                              ],
                                            ),
                                          ],
                                        ))),
                                  ],
                                ),
                              ),
                            );
                          },
                        ))
                  ],
                )))
          ],
        ),
      ),
    );
  }
}
