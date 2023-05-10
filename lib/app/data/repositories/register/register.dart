import 'dart:convert';

import '../../providers/register/register.dart';

//Repositório responsável pela entidade post !!
//lembrando que cada entidade que persiste de alguma forma com o banco de dados, seja ela uma api ou sqlite
//deve possuir um repositório excluisivo
class RegisterRepository {
  final RegisterApi authServices;

  RegisterRepository({required this.authServices});

  register(data) {
    return authServices.register(data);
  }
}
