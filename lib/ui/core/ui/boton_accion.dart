import 'package:flutter/material.dart';

class BotonAccion extends StatelessWidget {
  const BotonAccion({
    super.key,
    required this.texto,
    required this.onPressed,
    this.destacado = false,
  });

  final String texto;
  final VoidCallback? onPressed;
  final bool destacado;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: destacado
            ? Colors.indigo.shade800
            : Colors.teal.shade800,
        foregroundColor: destacado ? Colors.amber.shade100 : Colors.white,
        padding: destacado
            ? const EdgeInsets.symmetric(horizontal: 28, vertical: 20)
            : const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      child: Text(texto),
    );
  }
}
