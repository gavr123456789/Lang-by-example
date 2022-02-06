package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Print("Enter num: ")

	text, err := reader.ReadString('\n')
	if err != nil {
		panic(err)
	}

	fmt.Printf("lenth is: %d\n", len(text))
}