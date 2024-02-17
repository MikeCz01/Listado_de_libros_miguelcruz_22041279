import 'dart:convert';

List<Libros> librosfromJson(String str) =>
    List<Libros>.from(json.decode(str).map((x) => Libros.fromJson(x)));

class Libros {
  int id;
  int year;
  String title;
  String handle;
  String publisher;
  String isbn;
  int pages;
  String notes;
  String created;
  String villians;

  Libros({
    required this.id,
    required this.year,
    required this.title,
    required this.handle,
    required this.publisher,
    required this.isbn,
    required this.pages,
    required this.notes,
    required this.created,
    required this.villians,
  });
  
  factory Libros.fromJson(Map<String, dynamic> json) => Libros(
    id: json["id"],
    year: json["Year"],
    title: json["Title"],
    handle: json["handle"],
    publisher: json["Publisher"],
    isbn: json["ISBN"],
    pages: json["Pages"],
    notes: json["Notes"],
    created: json["created_at"],
    villians: json["villians"],
  );

}
