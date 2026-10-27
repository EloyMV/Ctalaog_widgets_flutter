import 'package:flutter/material.dart';

class IconoFavorito extends StatelessWidget {
  const IconoFavorito({super.key, this.marcado = false, this.tamano = 32});

  final bool marcado;
  final double tamano;

  @override
  Widget build(BuildContext context) {
    return Icon(
      marcado ? Icons.favorite : Icons.favorite_border,
      size: tamano,
      color: Colors.pink.shade800,
      semanticLabel: marcado
          ? 'Marcado como favorito'
          : 'Sin marcar como favorito',
    );
  }
}
