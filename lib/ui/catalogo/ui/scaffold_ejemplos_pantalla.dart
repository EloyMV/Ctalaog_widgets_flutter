import 'package:flutter/material.dart';

import '../../core/ui/boton_aviso.dart';
import '../../core/ui/pantalla_demostracion.dart';

class ScaffoldEjemplosPantalla extends StatelessWidget {
  const ScaffoldEjemplosPantalla({
    super.key,
    this.destacada = false,
    this.centrarTitulo = false,
  });

  final bool destacada;
  final bool centrarTitulo;

  @override
  Widget build(BuildContext context) {
    return PantallaDemostracion(
      titulo: 'Ejemplos de Scaffold',
      destacada: destacada,
      centrarTitulo: centrarTitulo,
      contenido: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('PantallaDemostracion', style: TextStyle(fontSize: 20)),
          const Text(
            'Crea una pantalla con una barra arriba. '
            'titulo y contenido son obligatorios. '
            'destacada y centrarTitulo valen false por defecto. '
            'Con true cambian los colores y se centra el título.',
          ),
          const SizedBox(height: 8),
          const SelectableText(
            "PantallaDemostracion(\n"
            "  titulo: 'Mi ruta',\n"
            "  contenido: Text('Hola'),\n"
            "  destacada: true,\n"
            "  centrarTitulo: true,\n"
            ")",
            style: TextStyle(fontFamily: 'monospace'),
          ),
          const SizedBox(height: 12),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute<void>(
                  builder: (context) => ScaffoldEjemplosPantalla(
                    destacada: !destacada,
                    centrarTitulo: centrarTitulo,
                  ),
                ),
              );
            },
            child: const Text('Cambiar color de barra'),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute<void>(
                  builder: (context) => ScaffoldEjemplosPantalla(
                    destacada: destacada,
                    centrarTitulo: !centrarTitulo,
                  ),
                ),
              );
            },
            child: const Text('Cambiar alineación del título'),
          ),
          const Divider(height: 32),
          const Text('BotonAviso', style: TextStyle(fontSize: 20)),
          const Text(
            'Muestra un mensaje al pulsarlo. etiqueta y mensaje son obligatorios. '
            'flotante vale false: el aviso es fijo. Con true es flotante. '
            'segundos vale 3 por defecto y debe ser mayor que 0.',
          ),
          const SizedBox(height: 8),
          const SelectableText(
            "BotonAviso(etiqueta: 'Avisar', mensaje: 'Ruta guardada')",
            style: TextStyle(fontFamily: 'monospace'),
          ),
          const SizedBox(height: 12),
          const BotonAviso(
            etiqueta: 'Aviso fijo (3 segundos)',
            mensaje: 'Aviso: revisa la ruta antes de salir.',
          ),
          const SizedBox(height: 8),
          const BotonAviso(
            etiqueta: 'Aviso flotante (5 segundos)',
            mensaje: 'Ruta guardada.',
            flotante: true,
            segundos: 5,
          ),
        ],
      ),
    );
  }
}
