package main

import (
	"fmt"
	"math"
)

func main() {
	str := "charlie"
	switch str {
	case "alpha":
		fmt.Println("A")
	case "bravo":
		fmt.Println("B")
	case "charlie":
		fmt.Println("C")
	default:
		fmt.Println("Unrecognized letter")
	}

	c := 'h'
	switch c {
	case 'a', 'e', 'i', 'o', 'u':
		fmt.Println("Vowel")
	// case '\127'..'\255' // Looks like impossible
		// fmt.Println("Unknown")
	default: 
		fmt.Println("Consonant")
	}

	x := positiveOrNegative(5)

	fmt.Println(x)

}


func positiveOrNegative(num int) string {
	lowInt := math.MinInt
	higthInt := math.MaxInt

	switch num {
	// case lowInt ... -1: // not possible
  // case lowInt < num and num < -1  // not possible, result is bool not int
	}
	if lowInt < num && num < -1 {
		return "negative"
	} else if num == 0 {
		return "positive"
	} else if 1 < num && num < higthInt {
		return "positive"	
	} else {
		return "impossible"
	}

}
