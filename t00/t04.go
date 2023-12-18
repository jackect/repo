package main

import (
	"fmt"
	"math"
	"reflect"
)

func Add[T int | int32 | float32 | float64](a, b T) T {
	return a + b
}

const (
	a uint = iota
	b
	c
)

func during(s string) {
	// 实例化使用
	Add[int](1, 1) // 声明实例化类型为int
	Add(1.0, 1.3)  // 类型推断
}
func main() {
	var rune = '\x00'
	var a bool = true
	var b = int(a)
	// if e != nil {
	// 	fmt.Println("error")
	// }
	fmt.Println(math.MaxFloat32, math.MaxFloat64)
	fmt.Println(rune, reflect.TypeOf(rune), a, b)
	var defaultInt int
	var defaultFloat32 float32
	var defaultFloat64 float64
	var defaultBool bool
	var defaultString string
	fmt.Println(defaultInt, defaultFloat32, defaultFloat64, defaultBool, defaultString)
}
