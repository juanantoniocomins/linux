#!/bin/bash

# Mostrar ruta actual
echo "Directorio actual: $(pwd)"

# Pedir y validar número de mes
while true; do
    read -p "Introduce un número de mes (1-12): " mes
    if [[ "$mes" =~ ^[0-9]+$ ]] && (( mes >= 1 && mes <= 12 )); then
        break
    else
        echo "❌ Entrada no válida. Introduce solo un número entre 1 y 12."
    fi
done

# Formato de 2 dígitos
mes=$(printf "%02d" $mes)
anio=$(date +"%Y")

# Función para filtrar y ordenar
filtrar_elementos() {
    tipo=$1  # "directorio" o "archivo"
    find . -maxdepth 1 -mindepth 1 -exec stat --format='%Y|%F|%n|%y' {} \; | while IFS="|" read -r epoch tipo_archivo nombre fecha
    do
        mes_arch=$(date -d "$fecha" +%m)
        anio_arch=$(date -d "$fecha" +%Y)

        if [[ "$mes_arch" == "$mes" && "$anio_arch" == "$anio" ]]; then
            if [[ "$tipo" == "directorio" && "$tipo_archivo" == "directorio" ]]; then
                echo "$epoch|$nombre"
            elif [[ "$tipo" == "archivo" && "$tipo_archivo" != "directorio" ]]; then
                echo "$epoch|$nombre"
            fi
        fi
    done | sort -nr | cut -d"|" -f2
}

echo -e "\n📁 Carpetas del mes $mes:"
filtrar_elementos "archivo"
