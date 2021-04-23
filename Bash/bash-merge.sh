#!/bin/bash

# ==========================================
# Author        : Slendy_Milky
# Version       : V1.0
# Creation Date : 23.04.2021
# Script        : This script has been created to merge all adlist that i have found and use for my pihole. 
#                 As i want an unified list for my Pi-Hole and my AdGuard Home i prefer something that i'm sure will be the same.
# ==========================================

# Liste d'adlist
## oisd
dbl1="https://dbl.oisd.nl"

echo "Merging oisd files.."
dbmerge=`curl -s $dbl1 > /tmp/merge1`

## firebog
firebog1="https://v.firebog.net/hosts/AdAway.txt"
firebog2="https://v.firebog.net/hosts/Disconnect-ads.txt"
firebog3="https://v.firebog.net/hosts/Easylist.txt"
firebog4="https://v.firebog.net/hosts/Easylist-Dutch.txt"
firebog5="https://v.firebog.net/hosts/SBUnchecky.txt"
firebog6="https://v.firebog.net/hosts/AdguardDNS.txt"
firebog7="https://v.firebog.net/hosts/Prigent-Ads.txt"
firebog8="https://v.firebog.net/hosts/Airelle-trc.txt"
firebog9="https://v.firebog.net/hosts/Disconnect-trc.txt"
firebog10="https://v.firebog.net/hosts/Easyprivacy.txt"
firebog11="https://v.firebog.net/hosts/SB2o7Net.txt"
firebog12="https://v.firebog.net/hosts/APT1Rep.txt"
firebog13="https://v.firebog.net/hosts/Airelle-hrsk.txt"
firebog14="https://v.firebog.net/hosts/Openphish.txt"
firebog15="https://v.firebog.net/hosts/SBRisk.txt"
firebog16="https://v.firebog.net/hosts/Shalla-mal.txt"
firebog17="https://v.firebog.net/hosts/Prigent-Malware.txt"

echo "Merging Firebog files.."
fbmerge=`curl -s $firebog{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17} > /tmp/merge2
`

## Github
github1="https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt"
github2="https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts"
github3="https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt"
github4="https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Alternate%20versions%20Anti-Malware%20List/AntiMalwareHosts.txt"
github5="https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.2o7Net/hosts"
github6="https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts"
github7="https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Spam/hosts"
github8="https://raw.githubusercontent.com/FadeMind/hosts.extras/master/UncheckyAds/hosts"
github9="https://raw.githubusercontent.com/HorusTeknoloji/TR-PhishingList/master/url-lists.txt"
github10="https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts"
github11="https://raw.githubusercontent.com/Kees1958/W3C_annual_most_used_survey_blocklist/master/TOP_EU_US_Ads_Trackers_HOST"
github12="https://raw.githubusercontent.com/matomo-org/referrer-spam-blacklist/master/spammers.txt"
github13="https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/AmazonFireTV.txt"
github14="https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/android-tracking.txt"
github15="https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV.txt"
github16="https://raw.githubusercontent.com/PolishFiltersTeam/KADhosts/master/KADhosts_without_controversies.txt"
github17="https://raw.githubusercontent.com/RooneyMcNibNug/pihole-stuff/master/SNAFU.txt"
github18="https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt"
github19="https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"
github20="https://raw.githubusercontent.com/vokins/yhosts/master/hosts"

echo "Merging Github files.."
gitmerge=`curl -s $github{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20} > /tmp/gitmerge`