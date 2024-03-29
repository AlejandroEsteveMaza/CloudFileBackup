# Ruta del directorio donde se encuentran los archivos
$rutaDirectorio = "C:\Users\Alejandro\Downloads"

# Ruta de destino
$rutaDestino = "C:\Users\Alejandro\OneDrive\Documents"

# Nombre base del archivo
$nombreBase = "VillaButeiroBakery"

# Extensión del archivo
$extension = ".txt"

# Obtener todos los archivos que coincidan con el nombre base en la carpeta de destino
$archivosDestino = Get-ChildItem -Path $rutaDestino -Filter "$nombreBase*$extension"

# Eliminar los archivos que coincidan con el nombre base en la carpeta de destino
if ($archivosDestino.Count -gt 0) {
    $archivosDestino | Remove-Item -Force
}

# Obtener todos los archivos que coincidan con el nombre base en la carpeta de origen
$archivosOrigen = Get-ChildItem -Path $rutaDirectorio -Filter "$nombreBase*$extension" | Where-Object { $_.Name -match "^$nombreBase(\(\d+\))?\.txt$" }

# Verificar si se encontraron archivos en la carpeta de origen
if ($archivosOrigen.Count -gt 0) {
    # Obtener el archivo con la fecha de modificación más reciente
    $archivoMasReciente = $archivosOrigen | Sort-Object LastWriteTime -Descending | Select-Object -First 1

    # Ruta completa del archivo más reciente
    $rutaArchivoReciente = $archivoMasReciente.FullName

    # Mover el archivo a la nueva ubicación
    Move-Item -Path $rutaArchivoReciente -Destination $rutaDestino -Force

    # Eliminar los archivos que coincidan con el nombre base en la carpeta de origen
    if ($archivosOrigen.Count -gt 0) {
        $archivosOrigen | Remove-Item -Force
    }
}