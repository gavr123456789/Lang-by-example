import strutils, random

let answer = rand(100)
echo "Guess the number between 1 and 100"

while true:
  let guess = parseInt(stdin.readLine)

  if guess < answer:
    echo "Too low, try again"
  elif guess > answer:
    echo "Too high, try again"
  else:
    echo "Correct!"
    break

