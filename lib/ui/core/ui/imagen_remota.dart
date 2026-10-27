import 'package:flutter/material.dart';

class ImagenRemota extends StatelessWidget {
  const ImagenRemota({
    super.key,
    required this.url,
    this.ajuste = BoxFit.cover,
    this.decorativa = false,
    required this.descripcion,
  }) : assert(
         decorativa || (descripcion != null && descripcion != ''),
         'Una imagen informativa necesita una descripción no vacía.',
       );

  final String url;
  final BoxFit ajuste;
  final bool decorativa;
  final String? descripcion;

  @override
  Widget build(BuildContext context) {
    if (!decorativa && (descripcion == null || descripcion!.trim().isEmpty)) {
      throw ArgumentError.value(
        descripcion,
        'descripcion',
        'Una imagen informativa necesita una descripción no vacía.',
      );
    }

    final imagen = SizedBox(
      width: 300,
      height: 180,
      child: Image.network(
        url,
        fit: ajuste,
        excludeFromSemantics: true,
        frameBuilder: (context, child, frame, cargaSincrona) {
          if (cargaSincrona || frame != null) {
            return child;
          }
          return const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 8),
                Text('Cargando imagen…'),
              ],
            ),
          );
        },
        errorBuilder: (context, error, stackTrace) {
          return const Center(
            child: Text(
              'No se pudo cargar la imagen',
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
    );

    if (decorativa) {
      return ExcludeSemantics(child: imagen);
    }
    return Semantics(
      image: true,
      label: descripcion,
      excludeSemantics: true,
      child: imagen,
    );
  }
}
