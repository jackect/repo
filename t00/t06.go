package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	sec := time.Now().UnixMicro()
	fmt.Println(sec)
	rand.Seed(sec)
	i := rand.Int31n(10)
	var a *int = nil
	println(a)
	switch i {
	case 0:
		fmt.Print("zero...")
	case 1:
		fmt.Print("one...")
	case 2:
		fmt.Print("two...")
	}

	fmt.Println("ok")
}
