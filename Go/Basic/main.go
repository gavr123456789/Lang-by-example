package main

import (
	. "fmt"
	. "golangNivaTest/lib"
)

func main() {
	Println("Hello, World!")
	Sas(1, 2)
}

type Tree interface {
	isTree()
}

type Empty struct {
}

type Leaf struct {
	v int
}

type Node struct {
	left, right Tree
}

func (_ Leaf) isTree() {}
func (_ Node) isTree()  {}
func (_ Empty) isTree() {}

func depth(t Tree) int {

	switch nt := t.(type) {
	case Empty:
		return 0
	case Leaf:
		return 1
	case Node:
		return 1 + depth(nt.left) + depth(nt.right)
	default:
		println("unexpected type %T", nt)
	}
	return 0
}

type Person interface {
	isPerson()
}

type LoginnedIn struct {
	name string
}
type Guest struct {
}

func (_ LoginnedIn) isPerson() {}
func (_ Guest) isPerson()      {}

func printName(p Person) string {
	switch person := p.(type) {
	case Guest:
		return "hello guest"
	case LoginnedIn:
		return person.name
	default:
		return ""
	}
}
