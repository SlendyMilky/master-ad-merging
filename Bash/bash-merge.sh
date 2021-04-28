#!/bin/bash

# ==========================================
# Author        : Slendy_Milky
# Version       : V1.1
# Creation Date : 28.04.2021
# Script        : This script has been created to merge all adlist that i have found and use for my pihole. 
#                 As i want an unified list for my Pi-Hole and my AdGuard Home i prefer something that i'm sure that will be the same.
# ==========================================

clear

# VAR
green='\033[0;32m'
red='\033[0;31m'
yellow='\033[0;33m'
reset='\033[0m'

## VAR à modif
DIR='/tmp/bash-merge/'
firebog=./lib/firebog.sh
gitburst=./lib/gitburst.sh
lonely=./lib/lonely.sh
oisd=./lib/oisd.sh

# Nettoyage
rm -rf $DIR/*

# Création Dossier DBL
echo "Vérification existance dossier $DIR"
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

# Run des scripts de téléchargement
$firebog
$gitburst
$lonely
$oisd

# Merge de toutes les adlists

