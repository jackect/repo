package main

import (
	"errors"
	"fmt"
)

type Int interface {
	~int | ~int8 | ~int16 | ~int32 | ~int64
}

type Uint interface {
	~uint | ~uint8 | ~uint16 | ~uint32 | ~uint64
}
type Sint interface {
	Int | Uint
}

type Float interface {
	~float32 | ~float64
}

type Slice[T Int | Uint | Float] []T

func printBinary[T Sint](num T) {
	size := 8 // 假设是32位有符号整数
	binary := make([]byte, size)

	for i := size - 1; i >= 0; i-- {
		if num>>(size-i)&1 == 1 {
			binary[i] = '1'
		} else {
			binary[i] = '0'
		}
	}

	fmt.Printf("%s\t%v\n", binary, num)
}

func test() (result int, err error) {
	defer func() {
		result = 3
		err = errors.New("Error: 故意的一个错误")

	}()
	println("test func runned")
	result = 4
	return
}

func main() {
	var (
		num uint8 = 8
		b   int8  = -8
	)
	fmt.Println(test())
	printBinary(b >> 1)
	printBinary(num >> 1)
}
