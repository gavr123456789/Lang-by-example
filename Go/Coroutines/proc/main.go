package main

import (
	"fmt"
)

func fibonacci(n int) int {
	if n < 2 {
		return n
	} else {
		return fibonacci(n - 1) + fibonacci(n - 2)
	}
}

func main()  {
	x := fibonacci(44)
	fmt.Println(x)
}