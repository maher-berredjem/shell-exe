#!/bin/bash

# Nom de l'utilisateur dont vous souhaitez compter les connexions
utilisateur="maher"

# Chemin du fichier de logs
chemin_logs="/var/log/auth.log"

# Comptez le nombre de connexions pour l'utilisateur spécifié
nombre_connexions=$(grep"maher "$chemin_logs" | wc -l)

# Obtenez la date et l'heure au format jj-mm-aaaa-HH:MM
date_heure=$(date +'%d-%m-%Y-%H:%M')

# Créez le nom du fichier avec la date et l'heure
nom_fichier="number_connection-$date_heure"

# Écrivez le nombre de connexions dans le fichier
echo "Nombre de connexions pour l'utilisateur $maher : $nombre_connexions" > "$get_logs.sh"

# Archivez le fichier avec tar
tar -cvf "Backup/get_logs.sh.tar" "$get_logs.sh"

#*/30 * * * * /'/home/maher/shell-exe/Job08/get_logs.sh'


