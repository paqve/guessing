#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=postgres --tuples-only  -c"
NUMBER_TO_GUESS=$(( $RANDOM % 1 +1 ))
GUESSES=0

GAME(){
  read GUESS
  GUESSES=$(( $GUESSES + 1 ))
if [[ ! $GUESS =~ [0-9]+ ]]
then 
echo "That is not an integer, guess again:"
GAME
else
  if [[ $GUESS > $NUMBER_TO_GUESS ]]
  then 
  echo "It's lower than that, guess again:"
  GAME
  elif [[ $GUESS < $NUMBER_TO_GUESS ]]
  then 
  echo "It's higher than that, guess again:"
  GAME 
  fi
fi
}

echo -e "\nEnter your username:"
read USERNAME
# get user_id
USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")
if [[ -z $USER_ID ]]
then
echo "Welcome, $USERNAME! It looks like this is your first time here."
INSERT_NAME=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")
CREATE_GAME=$($PSQL "INSERT INTO history(user_id, number_played) VALUES($USER_ID, 1) ")
else 
GET_DATA=$($PSQL "SELECT number_played, best_game FROM history left join users using(user_id) WHERE name='$USERNAME'")
echo "$GET_DATA" | while read NUMBER BAR BEST
do
echo "Welcome back, $USERNAME! You have played $NUMBER games, and your best game took $BEST guesses."
INCREASE_NUMBER=$($PSQL "UPDATE history SET number_played=$(( $NUMBER+1 )) WHERE user_id=$USER_ID")
done
fi

echo "Guess the secret number between 1 and 1000:"

GAME
echo "You guessed it in $GUESSES tries. The secret number was $NUMBER_TO_GUESS. Nice job!"
if [[ -z $BEST ]]
then 
UPDATE_BEST=$($PSQL "UPDATE history SET best_game=$GUESSES WHERE user_id=$USER_ID")
elif [[ $GUESSES < $BEST ]]
then 
UPDATE_BEST=$($PSQL "UPDATE history SET best_game=$GUESSES WHERE user_id=$USER_ID")
fi
