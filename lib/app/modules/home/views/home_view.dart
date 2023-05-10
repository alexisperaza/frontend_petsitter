import 'package:frontend/app/modules/account/account.dart';
import 'package:frontend/app/modules/details_petsitter/details_petsitter.dart';
import 'package:frontend/app/modules/login/login.dart';
import 'package:frontend/app/modules/petsitters/petsitters.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../../../routes/app_pages.dart';
import '../home.dart';

class HomeView extends GetView<HomeController> {
  GetStorage box = GetStorage();
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFF5E1),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          elevation: 0,
          unselectedItemColor: Color(0xFFFFF5E1),
          selectedItemColor: Color(0xFFEFA60B),
          backgroundColor: Color(0xFF0E4B5B),
          currentIndex: controller.tabIndex.value,
          onTap: controller.changeTabIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Buscar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Cuenta',
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Center(
              child: Obx(
        () => (box.hasData('token') == false)
            ? _pagesLoggedIn.elementAt(controller.tabIndex.value)
            : _pagesLoggedOut.elementAt(controller.tabIndex.value),
      ))),
    );
  }
}

List<Widget> _pagesLoggedIn = <Widget>[PetsittersView(), LoginView()];
List<Widget> _pagesLoggedOut = <Widget>[PetsittersView(), AccountView()];
