# Catálogo de Flutter

Ejemplos de Text, Image, Icon, Botones y Scaffold/AppBar.
Placeholder no se hace porque se ha quitado de la actividad.
Los componentes están en `lib/ui/core/ui/` y los ejemplos en `lib/ui/catalogo/ui/`.

## Ejecutar

```sh
flutter pub get
flutter run
```

## Comprobar

```sh
flutter analyze
flutter test
```

Las pruebas comprueban las variantes, los botones, las imágenes y los avisos.
Usan imágenes controladas sin Internet y tiempo simulado para los avisos.

## Lista de la actividad

- [x] EtiquetaCatalogo: normal, destacada y aviso. Las destacadas usan tamaño 28.
- [x] TextoJerarquico: título, subtítulo y cuerpo con el mismo texto.
- [x] TextoResumen: texto corto y largo, límite de líneas y centrado.
- [x] ImagenRuta: normal y panorámica, descripción y adaptación al ancho.
- [x] ImagenRemota: cover, contain, espera, error y opción decorativa.
- [x] IconoEstado: pendiente, completada y error.
- [x] IconoFavorito: marcado y sin marcar, sin cambiar al pulsarlo.
- [x] BotonAccion: normal, destacado y desactivado.
- [x] BotonConIcono: principal, secundario y desactivado.
- [x] PantallaDemostracion: colores, alineación, contenido y botón de volver.
- [x] BotonAviso: fijo y flotante, mensaje y duración.
- [x] Ejemplos con una descripción corta, parámetros y código de uso.
- [x] Imagen local añadida en pubspec.yaml y pruebas de los componentes.
- [ ] Revisar los recortes de las imágenes y el texto con la ventana estrecha.
- [ ] Cambiar el tamaño destacado y recargar para ver las dos instancias.

La imagen local es `assets/imagenes/ruta_rio.png`.
Las imágenes remotas necesitan Internet y hay una URL incorrecta para probar el error.

## Dos componentes

**TextoResumen:** recibe el texto, el número de líneas (2 por defecto) y si está
centrado (false por defecto). Así puedo usar el mismo componente con textos
distintos. Su prueba comprueba que un texto largo se recorta y uno corto cabe entero.

**BotonConIcono:** recibe texto, icono y una función. Con secundario puedo elegir
entre el botón relleno y el de borde. La prueba cuenta las pulsaciones y comprueba
que con onPressed: null no se ejecuta la función.

## Entrega

Repositorio: https://github.com/EloyMV/Ctalaog_widgets_flutter

Después de crear y subir el commit, obtener su hash con `git rev-parse HEAD`.
Pegar la URL y el hash en Aules.
