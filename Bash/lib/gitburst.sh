#!/bin/bash

# ==========================================
# Author        : Slendy_Milky
# Version       : V1.0
# Creation Date : 27.04.2021
# Script        : Script pour gitburst liste
# ==========================================

# VAR
green='\033[0;32m'
red='\033[0;31m'
yellow='\033[0;33m'
reset='\033[0m'

## VAR à modif
DIR='/tmp/bash-merge/gitburst'
adlist='gitburst.adlist'

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
curl -s https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt | grep -o '^[^#]*' | awk '{print $2}' > $DIR/temp
curl -s https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.2o7Net/hosts | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Spam/hosts | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://raw.githubusercontent.com/FadeMind/hosts.extras/master/UncheckyAds/hosts | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://raw.githubusercontent.com/HorusTeknoloji/TR-PhishingList/master/url-lists.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://raw.githubusercontent.com/Kees1958/W3C_annual_most_used_survey_blocklist/master/TOP_EU_US_Ads_Trackers_HOST | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://raw.githubusercontent.com/matomo-org/referrer-spam-blacklist/master/spammers.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/vokins/yhosts/master/hosts | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/android-tracking.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV.txt | grep -o '^[^#]*' >> $DIR/temp
curl -s https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts | grep -o '^[^#]*' | awk '{print $2}' >> $DIR/temp
curl -s https://raw.githubusercontent.com/RooneyMcNibNug/pihole-stuff/master/SNAFU.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/ZYX2019/host-block-list/master/Custom.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/DandelionSprout/adfilt/master/AntiPCPriceHiderList.txt | grep -o '^[^!]*' | grep -o '^[^"["]*' > $DIR/temp
curl -s https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Sensitive%20lists/AntiPreacherList.txt | grep -o '^[^!]*' | grep -o '^[^"["]*' | grep -o '^[^#]*' >> $DIR/temp
curl -s https://raw.githubusercontent.com/ZYX2019/host-block-list/master/Custom.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/deathbybandaid/piholeparser/master/Subscribable-Lists/ParsedBlacklists/ZeuS-Domain-Blocklist-Bad-Domains.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/deathbybandaid/piholeparser/master/Subscribable-Lists/ParsedBlacklists/YousList.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/xlimit91/xlimit91-block-list/master/blacklist.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/deathbybandaid/piholeparser/master/Subscribable-Lists/ParsedBlacklists/WindowsSpyBlocker81.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/deathbybandaid/piholeparser/master/Subscribable-Lists/ParsedBlacklists/WindowsSpyBlocker7.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/stonecrusher/filterlists-pihole/master/watchlist-internet-ph.txt | grep -o '^[^#]*' >> $DIR/temp
curl -s https://raw.githubusercontent.com/deathbybandaid/piholeparser/master/Subscribable-Lists/ParsedBlacklists/Steven-Blacks-Unified-Hosts.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/austinheap/sophos-xg-block-lists/master/uncheckyads.txt >> $DIR/temp
curl -s https://theantisocialengineer.com/AntiSocial_Blacklist_Community_V1.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/deathbybandaid/piholeparser/master/Subscribable-Lists/ParsedBlacklists/Tofu-Filter.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/Th3M3/blocklists/master/tracking%26ads.list | grep -o '^[^#]*' >> $DIR/temp
curl -s https://raw.githubusercontent.com/deathbybandaid/piholeparser/master/Subscribable-Lists/ParsedBlacklists/TeslaCrypt-Ransomware-Payment-Sites-Domain-Blocklist.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/deathbybandaid/piholeparser/master/Subscribable-Lists/ParsedBlacklists/TeslaCrypt-Ransomware-C2-Domain-Blocklist.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/Strappazzon/teleme7ry/master/rules.txt | awk '{print $2}' >> $DIR/temp
curl -s https://raw.githubusercontent.com/deathbybandaid/piholeparser/master/Subscribable-Lists/ParsedBlacklists/Steven-Blacks-Trackers.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/deathbybandaid/piholeparser/master/Subscribable-Lists/ParsedBlacklists/Steven-Blacks-Risky-Hosts.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/austinheap/sophos-xg-block-lists/master/steven-blacks-ad-hoc-list.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/deathbybandaid/piholeparser/master/Subscribable-Lists/ParsedBlacklists/Steven-Blacks-Gambling.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/austinheap/sophos-xg-block-lists/master/steven-blacks-ad-hoc-list.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/PoorPocketsMcNewHold/SteamScamSites/master/steamscamsitesashes >> $DIR/temp
curl -s https://raw.githubusercontent.com/PoorPocketsMcNewHold/steamscamsites/master/steamscamsite.txt | grep -o '^[^!]*' >> $DIR/temp
curl -s https://raw.githubusercontent.com/w13d/adblockListABP-PiHole/master/Spotify.txt | grep -o '^[^#]*' >> $DIR/temp
curl -s https://raw.githubusercontent.com/austinheap/sophos-xg-block-lists/master/spotifyads.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/deathbybandaid/piholeparser/master/Subscribable-Lists/ParsedBlacklists/Spam-Assassin-Bill-Stearns.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/soteria-nou/domain-list/master/widgets.txt >> $DIR/temp
curl -s https://raw.githubusercontent.com/soteria-nou/domain-list/master/fake.txt >> $DIR/temp

# Mise en ordre alphabétique et unique sans commentaire
uniq $DIR/temp | grep -o '^[^#]*' | sort > $DIR/$adlist

# Fin
rm -rf $DIR/temp
echo -e "${green}$adlist : OK${reset}"

## Page 20 de https://filterlists.com/lists/