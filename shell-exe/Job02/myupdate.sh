#!/bin/bash

# Mise à jour du gestionnaire de paquets APT (pour les distributions Debian/Ubuntu)
if [ -x "$(command -v apt-get)" ]; then
  sudo apt-get update
  sudo apt-get upgrade -y
fi

# Mise à jour du gestionnaire de paquets YUM (pour les distributions CentOS/RHEL)
if [ -x "$(command -v yum)" ]; then
  sudo yum update -y
fi

