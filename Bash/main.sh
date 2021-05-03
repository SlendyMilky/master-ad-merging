#!/bin/bash

# ==========================================
# Author        : Slendy_Milky
# Version       : V1.1
# Creation Date : 28.04.2021
# Script        : Création du fichier Main en cas de première utilisation
# ==========================================

# VAR
date=`date "+%D %T"`
jour=`date | awk '{print $1}'`
heure=`date | awk '{print $2}'`

echo "                                                                                               
# =================================================================================================
# 
#    SSSSSSSSSSSSSSS lllllll                           iiii                                       
#  SS:::::::::::::::Sl:::::l                          i::::i                                      
# S:::::SSSSSS::::::Sl:::::l                           iiii                                       
# S:::::S     SSSSSSSl:::::l                                                                      
# S:::::S             l::::lyyyyyyy           yyyyyyyiiiiiiinnnn  nnnnnnnn        cccccccccccccccc
# S:::::S             l::::l y:::::y         y:::::y i:::::in:::nn::::::::nn    cc:::::::::::::::c
#  S::::SSSS          l::::l  y:::::y       y:::::y   i::::in::::::::::::::nn  c:::::::::::::::::c
#   SS::::::SSSSS     l::::l   y:::::y     y:::::y    i::::inn:::::::::::::::nc:::::::cccccc:::::c
#     SSS::::::::SS   l::::l    y:::::y   y:::::y     i::::i  n:::::nnnn:::::nc::::::c     ccccccc
#        SSSSSS::::S  l::::l     y:::::y y:::::y      i::::i  n::::n    n::::nc:::::c             
#             S:::::S l::::l      y:::::y:::::y       i::::i  n::::n    n::::nc:::::c             
#             S:::::S l::::l       y:::::::::y        i::::i  n::::n    n::::nc::::::c     ccccccc
# SSSSSSS     S:::::Sl::::::l       y:::::::y        i::::::i n::::n    n::::nc:::::::cccccc:::::c
# S::::::SSSSSS:::::Sl::::::l        y:::::y         i::::::i n::::n    n::::n c:::::::::::::::::c
# S:::::::::::::::SS l::::::l       y:::::y          i::::::i n::::n    n::::n  cc:::::::::::::::c
#  SSSSSSSSSSSSSSS   llllllll      y:::::y           iiiiiiii nnnnnn    nnnnnn    cccccccccccccccc
#                                 y:::::y                                                         
#                                y:::::y                                                          
#                               y:::::y                                                           
#                              y:::::y                                                            
#                             yyyyyyy                                                             
#                                                                                                 
# =================================================================================================
                                                                                                " > ./main-slyinc.txt
echo "# Document créer le ${jour} à ${heure}" >> ./main-slyinc.txt
echo "" >> ./main-slyinc.txt
echo "# Les modifications des versions se trouvent dans changelog.txt" >> ./main-slyinc.txt