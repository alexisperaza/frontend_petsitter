import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:convert';

final dio = Dio();

class LoginProvider {
  Future login(data) async {
    var body = json.encode(data);

    var response =
        await dio.get('http://192.168.0.23:4000/api/auth/login', data: data);
    if (response.statusCode == 200) {
      return response.data as Map<String, dynamic>;
    } else {
      throw Exception('Error al intentar registrar el cliente...!');
    }
  }
}
