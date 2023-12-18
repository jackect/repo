package main

import (
	"fmt"
	"math/rand"
	"time"
)

func fib2(number float64, ch chan float64) {
	x, y := 1.0, 1.0
	for i := 0; i < int(number); i++ {
		x, y = y, x+y
	}
	r := rand.Intn(3)
	time.Sleep(time.Duration(r) * time.Second)
	ch <- x
}

func main2() {
	start := time.Now()
	ch := make(chan float64, 20)
	for i := 1; i < 15; i++ {
		go fib2(float64(i), ch)

	}
	for i := 1; i < 15; i++ {
		fmt.Printf("Fib: %v\n", <-ch)
	}
	elapsed := time.Since(start)
	fmt.Printf("Done! It took %v seconds!\n", elapsed.Seconds())
}
func main() {
	start := time.Now()
	inch := make(chan string)
	outch := make(chan float64)
	go func() {
		var s string
		for {
			fmt.Scanf("%s", &s)
			if s == "quit" {
				inch <- s
			}
		}
	}()
	go func() {
		var n float64 = 0
		for {
			n++
			fib2(n, outch)
		}
	}()
	for {
		select {
		case n := <-outch:
			fmt.Printf("Fib: %v\n", n)
		case <-inch:
			elapsed := time.Since(start)
			fmt.Printf("Done! It took %v seconds!\n", elapsed.Seconds())
			return
		}
	}
}
