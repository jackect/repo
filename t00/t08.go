package main

import "fmt"

func highlow(high int, low int) {
	if high < low {
		fmt.Println("Panic!")
		panic("highlow() low greater than high")
	}
	defer fmt.Println("Deferred: highlow(", high, ",", low, ")")
	fmt.Println("Call: highlow(", high, ",", low, ")")

	highlow(high, low+1)
}

func main2() {
	highlow(2, 0)
	fmt.Println("Program finished successfully!")
}
func main() {
	defer func() {
		handler := recover()
		if handler != nil {
			fmt.Println("main(): recover", handler)
		}
	}()

	// highlow(2, 0)
	var a int8 = -8
	b := uint8(a)
	fmt.Printf("%b %b\n", a, b)
	println(a>>1, b>>1)
	fmt.Println("Program finished successfully!")
}
