package main

import (
	"fmt"
	"math/rand"
	"time"
)

func test1() {
	var num int32
	sec := time.Now().Unix()
	rand.Seed(sec)

	for {
		fmt.Print("Writing inside the loop...")
		if num = rand.Int31n(10); num == 5 {
			num += 3
			fmt.Println("finish!")
			break
		}
		fmt.Println(num)
	}
}

func main() {
	for i := 1; i <= 4; i++ {
		fmt.Println("regular", i)
		defer fmt.Println("deferred", -i)
	}
}
