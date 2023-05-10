part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
  static const REGISTER = _Paths.REGISTER;
  static const INITIAL = _Paths.INITIAL;
  static const LOGIN = _Paths.LOGIN;
  static const DETAILSPETSITTER = _Paths.DETAILSPETSITTER;
  static const ACCOUNT = _Paths.ACCOUNT;
  static const PETSITTERS = _Paths.PETSITTERS;
}

abstract class _Paths {
  static const HOME = '/home';
  static const REGISTER = '/register';
  static const INITIAL = '/initial';
  static const LOGIN = '/login';
  static const DETAILSPETSITTER = '/details_petsitter';
  static const ACCOUNT = '/account';
  static const PETSITTERS = '/petsitters';
}
