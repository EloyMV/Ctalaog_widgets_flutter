import 'package:flutter/material.dart';

import '../../core/ui/boton_accion.dart';
import '../../core/ui/boton_con_icono.dart';

class BotonesEjemplosPantalla extends StatelessWidget {
  const BotonesEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    void confirmarAccion() {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Has pulsado el botón')));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Botones')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('BotonAccion', style: TextStyle(fontSize: 20)),
          const Text(
            'Un botón para ejecutar una función. texto y onPressed son '
            'obligatorios. destacado vale false por defecto. '
            'Con true cambia el color y tiene más espacio. '
            'onPressed: null lo desactiva.',
          ),
          const SizedBox(height: 8),
          const SelectableText(
            "BotonAccion(texto: 'Guardar', onPressed: confirmarAccion)",
            style: TextStyle(fontFamily: 'monospace'),
          ),
          const SizedBox(height: 12),
          BotonAccion(texto: 'Normal', onPressed: confirmarAccion),
          const SizedBox(height: 8),
          BotonAccion(
            texto: 'Destacado',
            onPressed: confirmarAccion,
            destacado: true,
          ),
          const SizedBox(height: 8),
          const BotonAccion(texto: 'Desactivado', onPressed: null),
          const Divider(height: 32),
          const Text('BotonConIcono', style: TextStyle(fontSize: 20)),
          const Text(
            'Un botón con un icono. texto, icono y onPressed son obligatorios. '
            'secundario vale false: usa FilledButton.icon. '
            'Con true usa OutlinedButton.icon. '
            'onPressed recibe una función sin argumentos; null lo desactiva.',
          ),
          const SizedBox(height: 8),
          const SelectableText(
            "BotonConIcono(\n"
            "  texto: 'Guardar',\n"
            "  icono: Icons.save_outlined,\n"
            "  onPressed: confirmarAccion,\n"
            ")",
            style: TextStyle(fontFamily: 'monospace'),
          ),
          const SizedBox(height: 12),
          BotonConIcono(
            texto: 'Principal',
            icono: Icons.save_outlined,
            onPressed: confirmarAccion,
          ),
          const SizedBox(height: 8),
          BotonConIcono(
            texto: 'Secundario',
            icono: Icons.save_outlined,
            onPressed: confirmarAccion,
            secundario: true,
          ),
          const SizedBox(height: 8),
          const BotonConIcono(
            texto: 'Principal desactivado',
            icono: Icons.save_outlined,
            onPressed: null,
          ),
          const SizedBox(height: 8),
          const BotonConIcono(
            texto: 'Secundario desactivado',
            icono: Icons.save_outlined,
            onPressed: null,
            secundario: true,
          ),
        ],
      ),
    );
  }
}
