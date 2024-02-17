import 'package:flutter/material.dart';
import 'package:examen_primero_miguelcruz/models/lectura_libros.dart';
import 'package:examen_primero_miguelcruz/screens/items_libros.dart';

Widget libreria() {
  return FutureBuilder(
    future: libroslecturaarch.getlibros(), 
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      if (snapshot.hasData) {
        return ListView(
          children: listItems(snapshot.data, context),
        );
      } else {
        return const CircularProgressIndicator();
      }
    }
  );
}