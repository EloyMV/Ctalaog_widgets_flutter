import 'package:flutter/material.dart';

enum EstadoRuta { pendiente, completada, error }

class IconoEstado extends StatelessWidget {
  const IconoEstado({super.key, required this.estado, this.tamano = 32});

  final EstadoRuta estado;
  final double tamano;

  @override
  Widget build(BuildContext context) {
    IconData simbolo = Icons.schedule;
    Color color = Colors.orange.shade900;
    String etiqueta = 'Ruta pendiente';

    if (estado == EstadoRuta.completada) {
      simbolo = Icons.check_circle;
      color = Colors.green.shade800;
      etiqueta = 'Ruta completada';
    } else if (estado == EstadoRuta.error) {
      simbolo = Icons.error_outline;
      color = Colors.red.shade800;
      etiqueta = 'Error en la ruta';
    }

    return Icon(simbolo, size: tamano, color: color, semanticLabel: etiqueta);
  }
}
