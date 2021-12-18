package main

import (
	"bufio"
	"fmt"
	"os"
)

func check(e error) {
	if e != nil {
		panic(e)
	}
}

func readEntireFile() {
	dat, err := os.ReadFile("main.go")
	check(err)
	fmt.Print(string(dat))
}

func ReadFileByLines(r *bufio.Reader) (string, error) {
	var (
		isPrefix bool  = true
		err      error = nil
		line, ln []byte
	)
	for isPrefix && err == nil {
		line, isPrefix, err = r.ReadLine()
		ln = append(ln, line...)
	}
	return string(ln), err
}

func main() {
	readEntireFile()
	
	f, err := os.Open("main.go")
	if err != nil {
			fmt.Printf("error opening file: %v\n",err)
			os.Exit(1)
	}
	r := bufio.NewReader(f)
	s, e := ReadFileByLines(r)
	for e == nil {
			fmt.Println(s)
			s,e = ReadFileByLines(r)
	}
}
