package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"strings"
	"time"
)

func main() {
	min, max := 1, 100
	rand.Seed(time.Now().UnixNano())
	secretNumber := rand.Intn(max-min) + min

	fmt.Println("Guess a number between 1 and 100")
	fmt.Println("Please input your guess")
	
	attempts := 0
	for {
		attempts++
		reader := bufio.NewReader(os.Stdin)
		input, err := reader.ReadString('\n')
		if err != nil {
			fmt.Println("An error occured while reading input. Please try again", err)
			continue
		}

		input = strings.TrimSuffix(input, "\n")

		guess, err := strconv.Atoi(input)
		if err != nil {
			fmt.Println("Invalid input. Please enter an integer value")
			continue
		}

		fmt.Println("Your guess is", guess)

		if guess > secretNumber {
			fmt.Println("Your guess is bigger than the secret number. Try again")
		} else if guess < secretNumber {
			fmt.Println("Your guess is smaller than the secret number. Try again")
		} else {
			fmt.Println("Correct, you Legend! You guessed right after", attempts, "attempts")
			break
		}
	}
}