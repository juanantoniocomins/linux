# Cuenta: 
# Número de ficheros (no ocultos)
# Número de ficheros ocultos (empiezan por .)
# Número de carpetas (directorios)

#!/bin/bash

# Directorio a analizar (por defecto el actual si no se da argumento)
DIR="${1:-.}"

# Contar ficheros (no ocultos)
ficheros=$(find "$DIR" -maxdepth 1 -type f ! -name ".*" | wc -l)

# Contar ficheros ocultos
ficheros_ocultos=$(find "$DIR" -maxdepth 1 -type f -name ".*" | wc -l)

# Contar carpetas (excluyendo "." y "..")
carpetas=$(find "$DIR" -maxdepth 1 -type d ! -name "." | wc -l)

# Mostrar resultados
echo "📂 Carpeta analizada: $(pwd)"
echo "🗃️  Ficheros visibles: $ficheros"
echo "🔒 Ficheros ocultos: $ficheros_ocultos"
echo "📁 Carpetas: $carpetas"
