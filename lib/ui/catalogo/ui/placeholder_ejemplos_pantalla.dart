import 'package:flutter/material.dart';

class PlaceholderEjemplosPantalla extends StatelessWidget {
  const PlaceholderEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Placeholder')),
      body: ListView(padding: const EdgeInsets.all(16), children: []),
    );
  }
}
