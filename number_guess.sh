#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME

# Check if user exists
RETURNING_USER=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'" | sed 's/^[ \t]*//')

if [[ -z "$RETURNING_USER" ]]; then
  # Insert new user
  $PSQL "INSERT INTO users (username) VALUES ('$USERNAME')"
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # Get games played and best game stats
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $RETURNING_USER" | sed 's/^[ \t]*//')
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id = $RETURNING_USER" | sed 's/^[ \t]*//')

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

# Start guessing game
echo "Guess the secret number between 1 and 1000:"
TRIES=0

while true; do
  read GUESS
  
  # Validate input
  if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi

  ((TRIES++))

  if [[ $GUESS -gt $SECRET_NUMBER ]]; then
    echo "It's lower than that, guess again:"
  elif [[ $GUESS -lt $SECRET_NUMBER ]]; then
    echo "It's higher than that, guess again:"
  else
    break
  fi
done
 
INSERTED_GAME=$($PSQL "INSERT INTO games (user_id, guesses) VALUES ($USER_ID, $TRIES)") 
echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
