import 'package:flutter/material.dart';
import 'package:frontend/app/modules/home/home.dart';
import 'package:frontend/app/modules/initial/initial.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  GetStorage box = GetStorage();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PetSitter',
      theme: ThemeData(fontFamily: 'Poppins-Regular'),
      getPages: AppPages.routes,
      initialRoute: (box.hasData('token')) ? AppPages.HOME : AppPages.INITIAL,
    );
  }
}
