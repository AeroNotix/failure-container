package main

import (
	"fmt"
	"math/rand"
)

func main() {
	x := []int{}
	for {
		fmt.Println("don't be hatin', just allocatin'")
		x = append(x, rand.Intn(100))
	}
}
