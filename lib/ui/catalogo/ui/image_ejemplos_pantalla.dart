import 'package:flutter/material.dart';

import '../../core/ui/imagen_ruta.dart';
import '../../core/ui/imagen_remota.dart';

class ImageEjemplosPantalla extends StatelessWidget {
  const ImageEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    const url =
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg';

    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Image')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ImagenRuta', style: TextStyle(fontSize: 20)),
              Text(
                'Muestra una imagen local. rutaAsset y descripcion son obligatorios. '
                'panoramica vale false: tamaño 240 × 180. '
                'Con true: 300 × 120. Se reduce si no cabe.',
              ),
              Text(
                'La imagen está en assets/imagenes/ruta_rio.png '
                'y está añadida en assets de pubspec.yaml. '
                'Después de añadirla, ejecuta flutter pub get.',
              ),
              SizedBox(height: 8),
              SelectableText(
                "ImagenRuta(\n"
                "  rutaAsset: 'assets/imagenes/ruta_rio.png',\n"
                "  descripcion: 'Río entre montañas',\n"
                ")",
                style: TextStyle(fontFamily: 'monospace'),
              ),
              SizedBox(height: 12),
              Text('Normal'),
              ImagenRuta(
                rutaAsset: 'assets/imagenes/ruta_rio.png',
                descripcion: 'Río entre montañas',
              ),
              SizedBox(height: 12),
              Text('Panorámica'),
              ImagenRuta(
                rutaAsset: 'assets/imagenes/ruta_rio.png',
                descripcion: 'Río entre montañas en panorámica',
                panoramica: true,
              ),
            ],
          ),
          Divider(height: 32),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ImagenRemota', style: TextStyle(fontSize: 20)),
              Text(
                'Muestra una imagen de Internet, un texto de espera o un error. '
                'url y descripcion son obligatorios. '
                'ajuste vale BoxFit.cover y decorativa vale false por defecto. '
                'cover recorta y contain muestra la imagen entera.',
              ),
              Text(
                'descripcion no puede estar vacía. Si decorativa es true, '
                'puede ser null y el lector de pantalla ignora la imagen.',
              ),
              SizedBox(height: 8),
              SelectableText(
                "ImagenRemota(\n"
                "  url: url,\n"
                "  descripcion: 'Un búho',\n"
                "  ajuste: BoxFit.contain,\n"
                ")",
                style: TextStyle(fontFamily: 'monospace'),
              ),
              SizedBox(height: 12),
              Text('cover'),
              ImagenRemota(url: url, descripcion: 'Búho con recorte'),
              SizedBox(height: 12),
              Text('contain'),
              ImagenRemota(
                url: url,
                descripcion: 'Búho completo',
                ajuste: BoxFit.contain,
              ),
              SizedBox(height: 12),
              Text('Error'),
              ImagenRemota(
                url: 'https://example.invalid/imagen-inexistente.png',
                descripcion: 'Imagen no disponible',
              ),
              Text(
                'Las dos primeras imágenes requieren Internet. Compara los recortes.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
