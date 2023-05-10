import 'dart:convert';

import '../../providers/petsitters/petsitters.dart';

//Repositório responsável pela entidade post !!
//lembrando que cada entidade que persiste de alguma forma com o banco de dados, seja ela uma api ou sqlite
//deve possuir um repositório excluisivo
class PetsittersRepository {
  final PetsittersProvider petsittersProvider;

  PetsittersRepository({required this.petsittersProvider});

  getPetsitters() {
    return petsittersProvider.getPetsitters();
  }
}
