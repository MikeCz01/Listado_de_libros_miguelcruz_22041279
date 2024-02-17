import 'package:flutter/material.dart';
import 'package:examen_primero_miguelcruz/screens/lista_libros.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
      ),
      body: Center(
        child: libreria(),
      ),
    );
  }
}