package main

import (
	"math/rand"
)

func main() {
	x := []int{}
	for {
		x = append(x, rand.Intn(100))
	}
}
