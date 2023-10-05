#!/bin/bash

# Vérifiez si le nombre correct d'arguments a été fourni
if [ $# -ne 3 ]; then
  echo "Usage: $0 <nombre1> <opération> <nombre2>"
  exit 1
fi

# Récupérez les paramètres dans des variables
nombre1="$1"
operation="$2"
nombre2="$3"

# Utilisez une structure de contrôle pour effectuer l'opération appropriée
case "$operation" in
  +)
    resultat=$(expr "$nombre1" + "$nombre2")
    ;;
  -)
    resultat=$(expr "$nombre1" - "$nombre2")
    ;;
  /)
    if [ "$nombre2" -eq 0 ]; then
      echo "Erreur : Division par zéro n'est pas autorisée."
      exit 1
    fi
    resultat=$(echo "scale=2; $nombre1 / $nombre2" | bc)
    ;;
  *)
    echo "Opération non reconnue : '$operation'"
    exit 1
    ;;
esac

# Affichez le résultat
echo "Résultat : $resultat"

