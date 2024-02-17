import 'dart:convert' as convert;
import 'package:flutter/services.dart';
import 'package:examen_primero_miguelcruz/models/libros.dart';


class _LibrosLecturaArch {
  Future<List<Libros>> getlibros() async {
    final dataAssetBundle = await rootBundle.loadString('database/libros.json');
    List<dynamic> librosListJson = convert.jsonDecode(dataAssetBundle);
    return librosListJson.map((e) => Libros.fromJson(e)).toList();
  }
}

final libroslecturaarch = _LibrosLecturaArch();
