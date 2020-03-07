#!/bin/bash

#
#  _____________
# <  For Kaori  >
#  -------------
#         \   ^__^
#          \  (o-)\_______
#             (__)\       )\/\
#                 ||----w |
#                 ||     ||
#
# 2020.03.05 - decaby7e (Jack)
#

## Functions ##

# Blow a kiss!
kiss(){
  printf "\033[6;14H" # Move to mouth
  printf "*"          # ~Kiss~
  printf "\033[5;14H" # Move to REye
  printf "^"          # Happy eye
  printf "\033[5;15H" # Move to LEye
  printf "^"          # Happy eye
  printf "\033[2H"    # Go back
  sleep 0.3           # Leave it for a bit
  printf "\033[6;14H" # Move to mouth
  printf "_"          # Back to normal
  printf "\033[5;14H" # Move to REye
  printf "o"          # Back to normal
  printf "\033[5;15H" # Move to LEye
  printf "o"          # Back to normal
  printf "\033[2H"    # Go back
}

# Bust a move!
dance(){
  printf "I'm unfinished :'("
}

## Main ##

# Initalize the space
clear
cowsay 'hey'

# Delete top and bottom bars
printf "\033[1H"
printf "\033[K"
printf "\033[3H"
printf "\033[K"

# Move into position
printf "\033[2H"
sleep 0.8

# Start!
while [ 1 == 1 ]; do
  printf "\033[K"
  printf "<       <3       >"
  printf "\033[2H"
  sleep 0.6
  kiss

  printf "\033[K"
  printf "<  goodnight :)  >"
  printf "\033[2H"
  sleep 0.6
  kiss
done

exit 0
