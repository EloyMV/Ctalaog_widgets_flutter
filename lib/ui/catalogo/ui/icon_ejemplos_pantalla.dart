import 'package:flutter/material.dart';

import '../../core/ui/icono_estado.dart';
import '../../core/ui/icono_favorito.dart';

class IconEjemplosPantalla extends StatelessWidget {
  const IconEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Icon')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text('IconoEstado', style: TextStyle(fontSize: 20)),
          Text(
            'Indica el estado de una ruta con un dibujo, color y descripción. '
            'estado es obligatorio: pendiente, completada o error. '
            'tamano vale 32 por defecto.',
          ),
          SizedBox(height: 8),
          SelectableText(
            'IconoEstado(estado: EstadoRuta.completada, tamano: 48)',
            style: TextStyle(fontFamily: 'monospace'),
          ),
          SizedBox(height: 12),
          Text('Pendiente'),
          IconoEstado(estado: EstadoRuta.pendiente),
          Text('Completada'),
          IconoEstado(estado: EstadoRuta.completada),
          Text('Error'),
          IconoEstado(estado: EstadoRuta.error),
          Text('Completada con tamaño 48'),
          IconoEstado(estado: EstadoRuta.completada, tamano: 48),
          Divider(height: 32),
          Text('IconoFavorito', style: TextStyle(fontSize: 20)),
          Text(
            'Muestra un corazón. No cambia al pulsarlo. '
            'No tiene parámetros obligatorios. '
            'marcado vale false y tamano vale 32 por defecto. '
            'Con marcado: true, el corazón aparece relleno.',
          ),
          SizedBox(height: 8),
          SelectableText(
            'IconoFavorito(marcado: true)',
            style: TextStyle(fontFamily: 'monospace'),
          ),
          SizedBox(height: 12),
          Text('Sin marcar'),
          IconoFavorito(),
          Text('Marcado'),
          IconoFavorito(marcado: true),
          Text('Marcado con tamaño 48'),
          IconoFavorito(marcado: true, tamano: 48),
        ],
      ),
    );
  }
}
