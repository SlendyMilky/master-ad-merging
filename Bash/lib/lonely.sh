#!/bin/bash

# ==========================================
# Author        : Slendy_Milky
# Version       : V1.0
# Creation Date : 27.04.2021
# Script        : Script pour lonely liste
# ==========================================

# VAR
green='\033[0;32m'
red='\033[0;31m'
yellow='\033[0;33m'
reset='\033[0m'

## VAR à modif
DIR='/tmp/bash-merge/lonely'
adlist='lonely.adlist'

# Nettoyage
rm -rf $DIR/*

# Création Dossier DBL
echo ""
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
curl -s https://adaway.org/hosts.txt | grep -o '^[^#]*' | awk '{print $2}' > $DIR/temp
curl -s https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt >> $DIR/temp
curl -s https://www.github.developerdan.com/hosts/lists/ads-and-tracking-extended.txt | grep -o '^[^#]*' | awk '{print $2}'  >> $DIR/temp
curl -s https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-blocklist.txt | awk '{print $1}' | grep -o '^[^#]*' >> $DIR/temp
curl -s https://hostfiles.frogeye.fr/firstparty-trackers-hosts.txt | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://hostfiles.frogeye.fr/multiparty-trackers-hosts.txt | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://s3.amazonaws.com/lists.disconnect.me/simple_malvertising.txt >> $DIR/temp
curl -s https://someonewhocares.org/hosts/zero/hosts | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://urlhaus.abuse.ch/downloads/hostfile/ | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://winhelp2002.mvps.org/hosts.txt | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://assets.windscribe.com/custom_blocklists/clickbait.txt >> $DIR/temp
curl -s https://hosts.ubuntu101.co.za/domains.list >> $DIR/temp
curl -s https://www.thedumbterminal.co.uk/files/services/squidblockedsites/blocked.txt >> $DIR/temp
curl -s https://www.threatcrowd.org/feeds/domains.txt >> $DIR/temp

# Mise en ordre alphabétique et unique sans commentaire
uniq $DIR/temp | grep -o '^[^#]*' | sort > $DIR/$adlist

# Fin
rm -rf $DIR/temp
echo -e "${green}$adlist : OK${reset}"