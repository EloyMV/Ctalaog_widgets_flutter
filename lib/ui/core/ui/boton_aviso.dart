import 'package:flutter/material.dart';

class BotonAviso extends StatelessWidget {
  const BotonAviso({
    super.key,
    required this.etiqueta,
    required this.mensaje,
    this.flotante = false,
    this.segundos = 3,
  }) : assert(segundos > 0, 'La duración debe ser positiva.');

  final String etiqueta;
  final String mensaje;
  final bool flotante;
  final int segundos;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(mensaje),
            behavior: flotante
                ? SnackBarBehavior.floating
                : SnackBarBehavior.fixed,
            duration: Duration(seconds: segundos),
          ),
        );
      },
      child: Text(etiqueta),
    );
  }
}
