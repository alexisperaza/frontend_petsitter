import 'dart:convert';

import '../../providers/login/login.dart';

//Repositório responsável pela entidade post !!
//lembrando que cada entidade que persiste de alguma forma com o banco de dados, seja ela uma api ou sqlite
//deve possuir um repositório excluisivo
class LoginRepository {
  final LoginProvider loginProvider;

  LoginRepository({required this.loginProvider});

  login(data) {
    return loginProvider.login(data);
  }
}
