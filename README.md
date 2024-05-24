![Gif](gif.gif)

# Options.sh
Este repositorio contiene un script de shell llamado `options.sh`, diseñado para proporcionar un menú interactivo para varias opciones, como acceder a aplicaciones, configuraciones, un explorador de archivos y salir del programa.

## Descripción

El script `options.sh` presenta un menú simple pero efectivo que permite al usuario seleccionar entre diferentes opciones mediante el uso de `rofi`, una utilidad para mostrar ventanas de selección en el entorno de escritorio X11. Las opciones disponibles son:

- **Aplicaciones**: Muestra un menú de aplicaciones disponibles utilizando `rofi -show drun`, lo que permite al usuario iniciar fácilmente aplicaciones instaladas.
- **FileBrowser**: Abre un explorador de archivos utilizando `rofi -show filebrowser`, permitiendo al usuario navegar y gestionar archivos de forma interactiva.
- **Configuración**: Invoca un menú para ajustar la configuración, proporcionando al usuario opciones para personalizar el entorno según sus preferencias.
- **Salir**: Termina la ejecución del script y sale del menú.

## Uso

1. Clona este repositorio en tu máquina local.
2. Abre el script y cambia la configuracion a tu gusto.
3. Ejecuta el script `options.sh` en un terminal de shell.

```
./options.sh
```

4. Selecciona una de las opciones del menú utilizando las teclas de dirección y la tecla Enter.

## Requisitos

- Este script está diseñado para ser ejecutado en un entorno de escritorio X11.
- Se requiere tener instalado `rofi` para mostrar los menús de selección.

## Contribuir

Si deseas contribuir a este proyecto, ¡eres bienvenido! Siéntete libre de abrir un *pull request* con tus mejoras o correcciones.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.

---
