#!/bin/bash
#Program to tell a persons fortune
echo -e "\n~~ Fortune Teller ~~\n"
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later") 
N=$(( RANDOM % 6 ))
echo ${RESPONSES[$N]}
GET_FORTUNE(){
echo "Ask a yes or no question:"
read QUESTION
}

GET_FORTUNE

  while [[ $N -ge 0 ]]
  do
    echo $N
    ((N++))
    sleep 3
  done