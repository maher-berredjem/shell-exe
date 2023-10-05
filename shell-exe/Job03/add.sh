#!/bin/bash

# Vérifiez si le nombre correct de paramètres a été fourni
if [ $# -ne 2 ]; then
  echo "Usage: $0 <nombre1> <nombre2>"
  exit 1
fi

# Récupérez les deux nombres à partir des paramètres
nombre1="$1"
nombre2="$2"

# Additionnez les deux nombres
resultat=$(expr "$nombre1" + "$nombre2")

# Affichez le résultat
echo "La somme de $nombre1 et $nombre2 est égale à $resultat"

