#!/bin/bash

# Chemin vers le fichier CSV contenant les informations des utilisateurs
fichier_csv="/chemin/vers/votre/fichier.csv"

# Fonction pour créer un utilisateur et lui accorder des permissions d'administrateur
creer_utilisateur() {
  nom_utilisateur="$1"
  est_admin="$2"

  # Créez l'utilisateur s'il n'existe pas
  if ! id "$nom_utilisateur" &>/dev/null; then
    useradd -m "$nom_utilisateur"
  fi

  # Accordez les permissions d'administrateur si l'utilisateur est un admin
  if [ "$est_admin" -eq 1 ]; then
    usermod -aG sudo "$nom_utilisateur"
  fi
}

# Lire le fichier CSV et créer les utilisateurs
while IFS=, read -r nom_admin est_admin; do
  creer_utilisateur "$nom_admin" "$est_admin"
done < "$fichier_csv"
