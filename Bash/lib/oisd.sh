#!/bin/bash

# ==========================================
# Author        : Slendy_Milky
# Version       : V1.0
# Creation Date : 27.04.2021
# Script        : Script pour oisd liste
# ==========================================

# VAR
green='\033[0;32m'
red='\033[0;31m'
yellow='\033[0;33m'
reset='\033[0m'

## VAR à modif
DIR="/tmp/bash-merge/dbl/"
adlist='oisd.adlist'

# Nettoyage
rm -rf $DIR/*

# Création Dossier DBL
echo "Vérification existance dossier ${DIR}"
if [ -d "$DIR" ]; then
  # Si $dir existe faire :
  echo -e "${green}Le dossier exsite !${reset}"
  echo -e "${yellow}Continuation du script.${reset}"
else
  # Si $dir n'existe pas faire :
  echo -e "${red}Le dossier n'exsite pas !${reset}"
  echo -e "${yellow}Création du dossier.${reset}"
  mkdir -p $DIR
fi

curl https://dbl.oisd.nl > $DIR/$adlist # Don't need formating