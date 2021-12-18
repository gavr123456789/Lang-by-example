package main

import (
	"fmt"
)

func sum(a, b int) int {
	return a + b
}

func minus(a, b int) int {
	return a - b
}

func main()  {
	x := sum(5, 76)
	y := minus(5, 76)
	fmt.Println(x)
	fmt.Println(y)
}