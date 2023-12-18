package practice

import (
	"fmt"
	"reflect"
	"testing"
)

func Test01(t *testing.T) {
	FizzBuzz()
}

func Test02(t *testing.T) {
	fmt.Println("Prime numbers less than 20:")
	for number := 1; number <= 10000; number++ {
		if findprimes(number) {
			fmt.Printf("%v ", number)
		}
	}
	println("")
}

func Test03(t *testing.T) {
	cities := []string{"New York", "Paris", "Berlin", "Madrid"}
	fmt.Println("Cities:", cities, len(cities))
	c := append(cities, "SC")
	fmt.Println(reflect.TypeOf(c))
}

func Test04(t *testing.T) {
	var twoD [3][5]int
	for i := 0; i < 3; i++ {
		for j := 0; j < 5; j++ {
			twoD[i][j] = (i + 1) * (j + 1)
		}
		fmt.Println("Row", i, twoD[i])
	}
	fmt.Println("\nAll at once:", twoD)
}

func Test05(t *testing.T) {
	// 声明一个数组
	arr := [5]int{1, 2, 3, 4, 5}

	// 将数组转换为切片
	slice := arr[:]
	fmt.Println(reflect.TypeOf(slice), reflect.TypeOf(arr))
	// 打印切片
	fmt.Println(slice) // 输出：[1 2 3 4 5]
}

func Test06(t *testing.T) {
	letters := []string{"A", "B", "C", "D", "E"}
	remove := 2

	if remove < len(letters) {

		fmt.Println("Before", letters, "Remove ", letters[remove])

		letters2 := append(letters[:remove], letters[remove+1:]...)
		letters3 := append(letters2, "jack")
		letters3 = append(letters3, "jacker")
		fmt.Println(letters3)
		fmt.Println("After", letters)
		letters2[3] = "JCK"
		fmt.Println("mod After", letters2)
		fmt.Println(letters)
		var le [2]string
		let := le[:]
		copy(let, letters)
		println(&le, let, letters, letters2, letters3, cap(letters2), cap(letters3))
	}
}

func Test07(t *testing.T) {
	var s map[string]int
	s2 := make(map[string]int)
	fmt.Println(s, s2)
	println(s, s2)

	studentsAge := map[string]int{
		"john": 32,
		"bob":  31,
	}
	v := reflect.TypeOf(studentsAge)
	println(v)
	fmt.Println(v)
	fmt.Println(studentsAge)
	a, err := studentsAge["join"]
	if err {
		println("exists", a)
	} else {
		println("not exitsts")
	}
}

func Test08(t *testing.T) {
	type Employee struct {
		ID        int
		FirstName string
		LastName  string
		Address   string
	}
	employee := Employee{LastName: "Doe", FirstName: "John"}
	fmt.Println(employee)
	employeeCopy := &employee
	employeeCopy.FirstName = "David"
	fmt.Println(&employee)

}
func Test09(t *testing.T) {
	result := Fib(1000)
	fmt.Println(result, len(cache))
}
func Benchmark01(b *testing.B) {
	a := Fib(10000)
	fmt.Println(a)
}
func Benchmark02(b *testing.B) {
	a := fib(10000)
	fmt.Println(a)
}
