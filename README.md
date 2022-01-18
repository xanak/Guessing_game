# Hello, welcome to the Guessing game!

## In this game you would be able to:

- Guess the number of archives in the current directory
- The makefile would be able to generate 1-100 random number of files so, you  have to guess this number. 

Here is the code of my little program: 

```
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
```

Here is the [page link](https://www.wikipedia.org/)

![Image](https://eresmama.com/wp-content/uploads/2017/03/AD183D1.jpg)

