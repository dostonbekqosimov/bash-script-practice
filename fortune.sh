#!/bin/bash
# Program to tell a person's fortune
echo -e "\n~~ Fortune Teller ~~\n"
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")

GET_FORTUNE(){
  if [[ -z $1 ]]
  then 
    echo "Ask a yes or no question:"
  else 
    echo "Try again. Make sure it ends with a question mark:"
  fi
  read QUESTION
}

# Initial prompt to ask for a question without any argument
GET_FORTUNE

# Loop until the question ends with a question mark
until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE again
done

N=$(( RANDOM % ${#RESPONSES[@]} ))

# Print the selected fortune with an empty line before
echo -e "\n${RESPONSES[$N]}"
