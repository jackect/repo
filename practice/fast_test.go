package practice

import (
	"fmt"
	"testing"
)

func BenchmarkMap(t *testing.B) {
	m := make(map[int]int)
	initialCapacity := len(m)
	expectedCapacity := initialCapacity + 1000000
	for i := 0; i < expectedCapacity; i++ {
		m[i] = i
	}
}

func TestMapCapacityExpansion(t *testing.T) {
	// 初始化一个 map
	m := make(map[int]int)

	// 获取初始容量
	initialCapacity := len(m)

	// 预期扩张后的容量
	expectedCapacity := initialCapacity + 100

	// 添加足够多的元素，使其触发容量扩张
	for i := 0; i < expectedCapacity; i++ {
		m[i] = i
	}

	// 获取扩容后的容量
	actualCapacity := len(m)

	// 检查实际容量是否等于预期容量
	if actualCapacity != expectedCapacity {
		t.Errorf("容量扩张错误。预期容量：%d，实际容量：%d", expectedCapacity, actualCapacity)
	}
	fmt.Println(m)
}

func TestFib(t *testing.T) {
	a := fibonacci(1000000)
	println(a)
}

func TestRoman(t *testing.T) {
	fmt.Println(romanToArabic("MCLX"))
	fmt.Println(romanToArabic("MCMXCIX"))
	fmt.Println(romanToArabic("MCMZ"))
	fmt.Println(romanToArabic("IIIIV"))
	fmt.Println(romanToArabic2("IIIIV"))
}

func TestNoAtomic(t *testing.T) {
	NoAtomic()
}

func TestAtomic(t *testing.T) {
	Atomic()
}

func BenchmarkNoAtomic(b *testing.B) {
	NoAtomic()
}
func BenchmarkAtomic(b *testing.B) {
	Atomic()
}
