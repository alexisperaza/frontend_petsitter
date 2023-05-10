import 'package:frontend/app/modules/account/account.dart';
import 'package:frontend/app/modules/details_petsitter/details_petsitter.dart';
import 'package:frontend/app/modules/petsitters/petsitters.dart';
import 'package:get/get.dart';

import '../modules/home/home.dart';
import '../modules/initial/initial.dart';
import '../modules/login/login.dart';
import '../modules/register/register.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const REGISTER = Routes.REGISTER;
  static const LOGIN = Routes.LOGIN;
  static const INITIAL = Routes.INITIAL;
  static const HOME = Routes.HOME;
  static const DETAILSPETSITTER = Routes.DETAILSPETSITTER;
  static const ACCOUNT = Routes.ACCOUNT;

  static final routes = [
    GetPage(
      name: _Paths.INITIAL,
      page: () => InitialView(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PETSITTERS,
      page: () => PetsittersView(),
      binding: PetsittersBinding(),
    ),
    GetPage(
      name: _Paths.DETAILSPETSITTER,
      page: () => DetailsPetsitterView(),
      binding: DetailsPetsittersBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountView(),
      binding: AccountBinding(),
    ),
  ];
}
