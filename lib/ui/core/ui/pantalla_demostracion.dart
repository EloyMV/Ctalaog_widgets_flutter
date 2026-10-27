import 'package:flutter/material.dart';

class PantallaDemostracion extends StatelessWidget {
  const PantallaDemostracion({
    super.key,
    required this.titulo,
    required this.contenido,
    this.destacada = false,
    this.centrarTitulo = false,
  });

  final String titulo;
  final Widget contenido;
  final bool destacada;
  final bool centrarTitulo;

  @override
  Widget build(BuildContext context) {
    final colores = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
        centerTitle: centrarTitulo,
        backgroundColor: destacada ? colores.primary : colores.surface,
        foregroundColor: destacada ? colores.onPrimary : colores.onSurface,
      ),
      body: contenido,
    );
  }
}
