#!/bin/bash

eval touch file-{1..$(($RANDOM%50))}.txt

value=$(ls| wc -l)

echo "Guess the number of files in the current directory"
read number

function guess {
echo "Guess again"
read number
}

while [[ $number -ne $value ]]
do
if [[ $(($value-$number)) -ge 1 ]] && [[ $(($value-$number)) -le 10 ]]
then
  echo "You're close, just a little higher"
elif [[ $(($number-$value)) -ge 1 ]] && [[ $(($number-$value)) -le 10 ]]
then
    echo "You're close, just a little lower"
elif [[ $number -gt $value ]]
    then
      echo "The guess is too high"
else
  echo "The guess is too low"
fi
guess
done

cowsay -f turtle "Congratulations, you have guess the magic number"

rm *.txt
