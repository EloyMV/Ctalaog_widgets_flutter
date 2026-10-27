import 'package:flutter/material.dart';

enum TipoTexto { titulo, subtitulo, cuerpo }

class TextoJerarquico extends StatelessWidget {
  final String texto;
  final TipoTexto tipo;

  const TextoJerarquico({
    super.key,
    required this.texto,
    this.tipo = TipoTexto.cuerpo,
  });

  @override
  Widget build(BuildContext context) {
    double tamano = 16;
    FontWeight peso = FontWeight.normal;

    if (tipo == TipoTexto.titulo) {
      tamano = 28;
      peso = FontWeight.bold;
    } else if (tipo == TipoTexto.subtitulo) {
      tamano = 22;
      peso = FontWeight.w600;
    }

    return Text(
      texto,
      style: TextStyle(fontSize: tamano, fontWeight: peso),
    );
  }
}
