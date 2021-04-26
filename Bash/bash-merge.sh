#!/bin/bash

# ==========================================
# Author        : Slendy_Milky
# Version       : V1.0
# Creation Date : 23.04.2021
# Script        : This script has been created to merge all adlist that i have found and use for my pihole. 
#                 As i want an unified list for my Pi-Hole and my AdGuard Home i prefer something that i'm sure that will be the same.
# ==========================================

# Init
rm -rf /tmp/bash-merge/
mkdir /tmp/bash-merge/
tmp='/tmp/bash-merge'

# Liste d'adlist
## oisd
mkdir /tmp/bash-merge/dbl/
dbltemp=/tmp/bash-merge/dbl/temp
dbl1=`curl -s https://dbl.oisd.nl` > $dbltemp # Don't need formating

echo "Merging oisd files.."
merge1=`cat $dbl1 > $tmp/merge1`

## firebog
mkdir /tmp/bash-merge/firebog/
fbtemp=/tmp/bash-merge/firebog/temp

firebog1=`curl -s https://v.firebog.net/hosts/AdAway.txt` # Don't need formating
firebog2=`curl -s https://v.firebog.net/hosts/Disconnect-ads.txt` # Don't need formating
firebog3=`curl -s https://v.firebog.net/hosts/Easylist.txt` # Don't need formating
firebog4=`curl -s https://v.firebog.net/hosts/Easylist-Dutch.txt` # Don't need formating
firebog5=`curl -s https://v.firebog.net/hosts/SBUnchecky.txt` # Don't need formating
firebog6=`curl -s https://v.firebog.net/hosts/AdguardDNS.txt` # Don't need formating
firebog7=`curl -s https://v.firebog.net/hosts/Prigent-Ads.txt` # Don't need formating
firebog8=`curl -s https://v.firebog.net/hosts/Airelle-trc.txt` # Don't need formating
firebog9=`curl -s https://v.firebog.net/hosts/Disconnect-trc.txt` # Don't need formating
firebog10=`curl -s https://v.firebog.net/hosts/Easyprivacy.txt` # Don't need formating
firebog11=`curl -s https://v.firebog.net/hosts/SB2o7Net.txt` # Don't need formating
firebog12=`curl -s https://v.firebog.net/hosts/APT1Rep.txt` # Don't need formating
firebog13=`curl -s https://v.firebog.net/hosts/Airelle-hrsk.txt` # Don't need formating
firebog14=`curl -s https://v.firebog.net/hosts/Openphish.txt` # Don't need formating
firebog15=`curl -s https://v.firebog.net/hosts/SBRisk.txt` # Don't need formating
firebog16=`curl -s https://v.firebog.net/hosts/Shalla-mal.txt` # Don't need formating
firebog17=`curl -s https://v.firebog.net/hosts/Prigent-Malware.txt` # Don't need formating

echo "Merging Firebog files.."
merge2=`cat $firebog{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17} > $tmp/merge2`

## Github
mkdir /tmp/bash-merge/git/
gittemp=/tmp/bash-merge/git/temp

github1=`curl -s https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt | grep -o '^[^#]*' | awk '{print $2}'`
github2=`curl -s https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts | grep -o '^[^#]*' | awk '{print $2}'`
github3=`curl -s https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt | grep -o '^[^#]*' | awk '{print $2}'`
github4=`curl -s https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt` # Don't need formating
github5=`curl -s https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.2o7Net/hosts | grep -o '^[^#]*' | awk '{print $2}'`
github6=`curl -s https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts | grep -o '^[^#]*' | awk '{print $2}'`
github7=`curl -s https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Spam/hosts | grep -o '^[^#]*' | awk '{print $2}'`
github8=`curl -s https://raw.githubusercontent.com/FadeMind/hosts.extras/master/UncheckyAds/hosts | grep -o '^[^#]*' | awk '{print $2}'`
github9=`curl -s https://raw.githubusercontent.com/HorusTeknoloji/TR-PhishingList/master/url-lists.txt` # Don't need formating
github10=`curl -s https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts | grep -o '^[^#]*' | awk '{print $2}'`
github11=`curl -s https://raw.githubusercontent.com/Kees1958/W3C_annual_most_used_survey_blocklist/master/TOP_EU_US_Ads_Trackers_HOST | grep -o '^[^#]*' | awk '{print $2}'`
github12=`curl -s https://raw.githubusercontent.com/matomo-org/referrer-spam-blacklist/master/spammers.txt` # Don't need formating
github13=`curl -s https://raw.githubusercontent.com/vokins/yhosts/master/hosts | grep -o '^[^#]*' | awk '{print $2}'`
github14=`curl -s https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/android-tracking.txt` # Don't need formating
github15=`curl -s https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV.txt`
github16=`curl -s https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts`
github17=`curl -s https://raw.githubusercontent.com/RooneyMcNibNug/pihole-stuff/master/SNAFU.txt` # Don't need formating
github18=`curl -s https://raw.githubusercontent.com/ZYX2019/host-block-list/master/Custom.txt` # Don't need formating

echo "Merging Github files.."
merge3=`cat $github{1,2,3,4,5,6,7,8} > $tmp/merge3`

## Lonely files
mkdir /tmp/bash-merge/loney/
dbltemp=/tmp/bash-merge/lonely/temp

div1=`curl -s https://adaway.org/hosts.txt | grep -o '^[^#]*' | awk '{print $2}'`
div2=`curl -s https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt` # Don't need formating
div3=`curl -s https://www.github.developerdan.com/hosts/lists/ads-and-tracking-extended.txt | grep -o '^[^#]*' | awk '{print $2}'`
div4=`curl -s https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-blocklist.txt | awk '{print $1}' | grep -o '^[^#]*'`
div5=`curl -s https://hostfiles.frogeye.fr/firstparty-trackers-hosts.txt | grep -o '^[^#]*' | awk '{print $2}'`
div6=`curl -s https://hostfiles.frogeye.fr/multiparty-trackers-hosts.txt | grep -o '^[^#]*' | awk '{print $2}'`
div7=`curl -s https://s3.amazonaws.com/lists.disconnect.me/simple_malvertising.txt` # Don't need formating
div8=`curl -s https://someonewhocares.org/hosts/zero/hosts | grep -o '^[^#]*' | awk '{print $2}'`
div9=`curl -s https://urlhaus.abuse.ch/downloads/hostfile/ | grep -o '^[^#]*' | awk '{print $2}'`
div10=`curl -s https://winhelp2002.mvps.org/hosts.txt | grep -o '^[^#]*' | awk '{print $2}'`

echo "Merging bunch of lonely files.."
merge4=`cat $div{1,2,3,4,5,6,7,8,9,10} > $tmp/merge4`
