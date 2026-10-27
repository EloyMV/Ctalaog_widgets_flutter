import 'package:flutter/material.dart';

enum VarianteEtiqueta { normal, destacada, aviso }

class EtiquetaCatalogo extends StatelessWidget {
  final String texto;
  final VarianteEtiqueta variante;

  const EtiquetaCatalogo({
    super.key,
    required this.texto,
    this.variante = VarianteEtiqueta.normal,
  });

  @override
  Widget build(BuildContext context) {
    double tamano = 16;
    FontWeight peso = FontWeight.normal;
    Color color = Colors.black87;

    if (variante == VarianteEtiqueta.destacada) {
      tamano = 28;
      peso = FontWeight.bold;
      color = Colors.indigo;
    } else if (variante == VarianteEtiqueta.aviso) {
      tamano = 18;
      peso = FontWeight.w600;
      color = Colors.deepOrange.shade900;
    }

    return Text(
      texto,
      style: TextStyle(fontSize: tamano, fontWeight: peso, color: color),
    );
  }
}
