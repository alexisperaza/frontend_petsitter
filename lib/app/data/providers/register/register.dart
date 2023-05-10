import 'dart:async';
import 'dart:convert';

import '../../models/register/register.dart';
import 'package:dio/dio.dart';

final dio = Dio();

class RegisterApi {
  RegisterApi();

  Future register(data) async {
    var body = json.encode(data);

    var response = await dio.post('http://192.168.0.23:4000/api/auth/register',
        data: data);
    print(body);
    if (response.statusCode == 200) {
      return response.data as Map<String, dynamic>;
    } else {
      throw Exception('Error al intentar registrar el cliente...!');
    }
  }
}
