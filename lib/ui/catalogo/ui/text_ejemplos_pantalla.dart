import 'package:flutter/material.dart';

import '../../core/ui/etiqueta_catalogo.dart';
import '../../core/ui/texto_jerarquico.dart';
import '../../core/ui/texto_resumen.dart';

class TextEjemplosPantalla extends StatelessWidget {
  const TextEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    const contenido = 'Explora el catálogo de componentes';
    const textoLargo =
        'Esta ruta pasa por el río y llega hasta la montaña. '
        'Durante el camino hay árboles, un puente y una zona para descansar. '
        'Es un texto largo para probar el límite de líneas del resumen. '
        'Si no cabe entero, aparecen puntos suspensivos al final.';

    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Text')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text('EtiquetaCatalogo', style: TextStyle(fontSize: 20)),
          Text(
            'Muestra una etiqueta. texto es obligatorio. '
            'variante puede ser normal (por defecto), destacada o aviso.',
          ),
          SizedBox(height: 8),
          Text(
            'Antes se usaba destacada: true o false. '
            'En destacada ? 26 : 16, true elige 26 y false elige 16. '
            'El peso y el color se elegían igual. Ahora usamos un enum.',
          ),
          SizedBox(height: 8),
          SelectableText(
            "EtiquetaCatalogo(\n"
            "  texto: 'Mi ruta',\n"
            "  variante: VarianteEtiqueta.destacada,\n"
            ")",
            style: TextStyle(fontFamily: 'monospace'),
          ),
          SizedBox(height: 12),
          EtiquetaCatalogo(texto: 'Texto del catálogo'),
          EtiquetaCatalogo(
            texto: 'Texto del catálogo',
            variante: VarianteEtiqueta.destacada,
          ),
          EtiquetaCatalogo(
            texto: 'Aviso: revisa la ruta',
            variante: VarianteEtiqueta.aviso,
          ),
          EtiquetaCatalogo(
            texto: 'Otra etiqueta destacada',
            variante: VarianteEtiqueta.destacada,
          ),
          Text('Las dos destacadas comparten el tamaño de 28 puntos.'),
          Divider(height: 32),
          Text('TextoJerarquico', style: TextStyle(fontSize: 20)),
          Text(
            'Cambia el tamaño y el peso del texto. texto es obligatorio. '
            'tipo puede ser titulo, subtitulo o cuerpo (por defecto).',
          ),
          SizedBox(height: 8),
          SelectableText(
            "TextoJerarquico(texto: 'Mi ruta', tipo: TipoTexto.titulo)",
            style: TextStyle(fontFamily: 'monospace'),
          ),
          SizedBox(height: 12),
          TextoJerarquico(texto: contenido, tipo: TipoTexto.titulo),
          TextoJerarquico(texto: contenido, tipo: TipoTexto.subtitulo),
          TextoJerarquico(texto: contenido),
          Divider(height: 32),
          Text('TextoResumen', style: TextStyle(fontSize: 20)),
          Text(
            'Recorta un texto largo. texto es obligatorio. '
            'lineas vale 2 por defecto y debe ser mayor que 0. '
            'centrado vale false por defecto.',
          ),
          SizedBox(height: 8),
          SelectableText(
            "TextoResumen(texto: 'Mi ruta', lineas: 3, centrado: true)",
            style: TextStyle(fontFamily: 'monospace'),
          ),
          SizedBox(height: 12),
          Text('Dos líneas:'),
          TextoResumen(texto: textoLargo),
          SizedBox(height: 12),
          Text('Tres líneas y centrado:'),
          TextoResumen(texto: textoLargo, lineas: 3, centrado: true),
          SizedBox(height: 12),
          Text('Texto corto:'),
          TextoResumen(texto: 'Resumen breve.'),
        ],
      ),
    );
  }
}
