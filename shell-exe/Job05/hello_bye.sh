#!/bin/bash

# Vérifiez si le nombre correct d'arguments a été fourni
if [ $# -ne 1 ]; then
  echo "Usage: $0 <argument>"
  exit 1
fi

# Récupérez l'argument à partir des paramètres
argument="$1"

# Utilisez une structure de contrôle pour afficher le message approprié
if [ "$argument" = "Hello" ]; then
  echo "Bonjour, je suis un script !"
elif [ "$argument" = "Bye" ]; then
  echo "Au revoir et bonne journée !"
else
  echo "Argument non reconnu : '$argument'"
  exit 1
fi

