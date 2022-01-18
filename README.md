# <font color="orange">Hello, welcome to the Guessing game!</font>

In this game you would be able to:

- Guess the number of archives in the current directory
- The makefile would be able to generate 1-50 random number of files so, you  have to guess this number. 

Here is the code of my little program: 

```
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

```

:memo: **Note:**  Here is the [page link](https://xanak.github.io/Guessing_game/)

![Image](https://eresmama.com/wp-content/uploads/2017/03/AD183D1.jpg)

