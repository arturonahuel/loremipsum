#!/bin/bash
set -euo pipefail

# Contar líneas de cada archivo generado y mostrar resultado
for i in {1..5}; do
  archivo="loremipsum-${i}.txt"
  if [[ -f "$archivo" ]]; then
    # wc -l cuenta líneas; redirección para obtener solo el número
    cantidad=$(wc -l < "$archivo")

    # Manejo simple de pluralización
    if [[ "$cantidad" -eq 1 ]]; then
      echo "${archivo} tiene ${cantidad} línea."
    else
      echo "${archivo} tiene ${cantidad} líneas."
    fi
  else
    echo "No se encontró ${archivo}."
  fi
done

