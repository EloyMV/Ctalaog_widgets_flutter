import 'package:flutter/material.dart';

class BotonConIcono extends StatelessWidget {
  const BotonConIcono({
    super.key,
    required this.texto,
    required this.icono,
    required this.onPressed,
    this.secundario = false,
  });

  final String texto;
  final IconData icono;
  final VoidCallback? onPressed;
  final bool secundario;

  @override
  Widget build(BuildContext context) {
    if (secundario) {
      return OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(icono),
        label: Text(texto),
      );
    }

    return FilledButton.icon(
      onPressed: onPressed,
      icon: Icon(icono),
      label: Text(texto),
    );
  }
}
