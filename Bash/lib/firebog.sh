#!/bin/bash

# ==========================================
# Author        : Slendy_Milky
# Version       : V1.0
# Creation Date : 27.04.2021
# Script        : Script pour firebog liste
# ==========================================

# VAR
green='\033[0;32m'
red='\033[0;31m'
yellow='\033[0;33m'
reset='\033[0m'

## VAR à modif
DIR='/tmp/bash-merge/firebog'
adlist='firebog.adlist'

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

# Fusion all lists
curl https://v.firebog.net/hosts/AdAway.txt > $DIR/temp
curl https://v.firebog.net/hosts/Disconnect-ads.txt >> $DIR/temp
curl https://v.firebog.net/hosts/Easylist.txt >> $DIR/temp
curl https://v.firebog.net/hosts/Easylist-Dutch.txt >> $DIR/temp
curl https://v.firebog.net/hosts/SBUnchecky.txt >> $DIR/temp
curl https://v.firebog.net/hosts/AdguardDNS.txt >> $DIR/temp
curl https://v.firebog.net/hosts/Prigent-Ads.txt >> $DIR/temp
curl https://v.firebog.net/hosts/Airelle-trc.txt >> $DIR/temp
curl https://v.firebog.net/hosts/Disconnect-trc.txt >> $DIR/temp
curl https://v.firebog.net/hosts/Easyprivacy.txt >> $DIR/temp
curl https://v.firebog.net/hosts/SB2o7Net.txt >> $DIR/temp
curl https://v.firebog.net/hosts/APT1Rep.txt >> $DIR/temp
curl https://v.firebog.net/hosts/Airelle-hrsk.txt >> $DIR/temp
curl https://v.firebog.net/hosts/Openphish.txt >> $DIR/temp
curl https://v.firebog.net/hosts/SBRisk.txt >> $DIR/temp
curl https://v.firebog.net/hosts/Shalla-mal.txt >> $DIR/temp
curl https://v.firebog.net/hosts/Prigent-Malware.txt >> $DIR/temp
curl https://v.firebog.net/hosts/static/w3kbl.txt >> $DIR/temp

# Mise en ordre alphabétique et unique
uniq $DIR/temp | sort > $DIR/$adlist

# Fin
rm -rf $DIR/temp
echo -e "${green}$adlist : OK${reset}"