import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:convert';

import '../../models/petsitters/petsitters.dart';

final dio = Dio();

class PetsittersProvider {
  var jsonList;
  PetsittersProvider();
  Future getPetsitters() async {
    var response = await dio.get('http://192.168.0.23:4000/api/petsitters');
    if (response.statusCode == 200) {
      jsonList = response.data as List;
      return jsonList;
    } else {
      throw Exception('Error al intentar registrar el cliente...!');
    }
  }
}
