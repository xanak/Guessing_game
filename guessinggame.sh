#!/bin/bash


value=$(ls| wc -l)


echo "Guess the number of files in the current directory"
read number

function guess2 {
echo "Guess again"
read number
}

while [[ $number -ne $value ]]
do
if [[ $number -gt $value ]]
then 
  echo "The guess is too high"
else
  echo "The guess is too low" 
fi
guess2
done

echo "Congratulations, you have guess the magic number"
