# Script de Copia de Seguridad para Windows

Este script de PowerShell está diseñado para facilitar la copia de seguridad de un archivo desde una carpeta de origen a una carpeta de destino en Windows. Originalmente, está pensado para mover un archivo desde la carpeta de descargas a la carpeta de OneDrive para crear una copia de seguridad en la nube.

## Uso

1. Descarga el archivo del repositorio.
2. Abre el archivo `.ps1` en PowerShell ISE o en tu editor de código preferido.
3. Modifica las variables `$rutaDirectorio` y `$rutaDestino` para que reflejen las rutas de tus carpetas de origen y destino respectivamente.
4. Ejecuta el script haciendo clic derecho en el archivo `.ps1` y seleccionando "Ejecutar con PowerShell".

## Notas

- Asegúrate de tener los permisos necesarios para acceder a las carpetas de origen y destino.
- Este script elimina todos los archivos con el mismo nombre base tanto en la carpeta de origen como en la carpeta de destino antes de mover el archivo más reciente.
- Personaliza el nombre del archivo base (`$nombreBase`) y la extensión (`$extension`) según tus necesidades.

## Contribuciones

Las contribuciones son bienvenidas. Si tienes alguna idea de mejora.

## Autor

Este proyecto fue creado por Alejandro Esteve Maza.