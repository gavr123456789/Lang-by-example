package main

import "fmt"

func printThings(things ...string) {
	for _, thing := range things {
		fmt.Println(thing)
	}
}

func sum(nums ...int) {
	fmt.Print(nums, " ")
	total := 0
	for _, num := range nums {
		total += num
	}
	fmt.Println(total)
}

func main() {
	printThings("words", "to", "print")
	
	sum(1, 2)
	sum(1, 2, 3)

	nums := []int{1, 2, 3, 4}
	sum(nums...)
}
