import 'package:flutter/material.dart';
import 'package:primer_ejemplo_flutter/ui/catalogo/ui/catalogo_pantalla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catalogo Widgets Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 187, 228, 24),
        ),
      ),
      home: const CatalogoPantalla(),
    );
  }
}
 