#!/bin/bash

# Vérifiez si le nombre correct de paramètres a été fourni
if [ $# -ne 2 ]; then
  echo "Usage: $0 <nouveau-fichier> <fichier-source>"
  exit 1
fi

# Récupérez les noms des fichiers à partir des paramètres
nouveau_fichier="$1"
fichier_source="$2"

# Utilisez la redirection pour copier le contenu du fichier source dans le nouveau fichier
cat "$fichier_source" > "$nouveau_fichier"

# Vérifiez si la copie a réussi
if [ $? -eq 0 ]; then
  echo "Le contenu de '$fichier_source' a été copié dans '$nouveau_fichier' avec succès."
else
  echo "Une erreur s'est produite lors de la copie du contenu de '$fichier_source' dans '$nouveau_fichier'."
  exit 1
fi

