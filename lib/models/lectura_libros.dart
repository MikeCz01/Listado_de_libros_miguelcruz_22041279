import 'dart:convert';

List<Libros> librosfromJson(String str) =>
    List<Libros>.from(json.decode(str).map((x) => Libros.fromJson(x)));

class Libros {
  int id;
  int year;
  
}
