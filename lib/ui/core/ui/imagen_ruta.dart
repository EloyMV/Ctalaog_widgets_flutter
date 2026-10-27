import 'package:flutter/material.dart';

class ImagenRuta extends StatelessWidget {
  const ImagenRuta({
    super.key,
    required this.rutaAsset,
    this.panoramica = false,
    required this.descripcion,
  });

  final String rutaAsset;
  final bool panoramica;
  final String descripcion;

  @override
  Widget build(BuildContext context) {
    final ancho = panoramica ? 300.0 : 240.0;
    final alto = panoramica ? 120.0 : 180.0;

    return SizedBox(
      width: ancho,
      child: AspectRatio(
        aspectRatio: ancho / alto,
        child: Image.asset(
          rutaAsset,
          fit: BoxFit.cover,
          semanticLabel: descripcion,
        ),
      ),
    );
  }
}
