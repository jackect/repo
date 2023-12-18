package practice

func fibonacci(n int) []uint64 {
	if n < 2 {
		return nil
	}

	sequence := []uint64{1, 1}

	for i := 2; i < n; i++ {
		next := sequence[i-1] + sequence[i-2]
		sequence = append(sequence, next)
	}

	return sequence
}

var cache = make(map[int]int)

func fib(n int) int {
	if n <= 2 {
		return 1
	}
	// 检查缓存中是否已经计算过
	if val, ok := cache[n]; ok {
		return val
	}
	// 计算并保存结果到缓存
	result := fib(n-1) + fib(n-2)
	cache[n] = result
	return result
}

func Fib(n int) int {
	return fibTail(n, 1, 1)
}

func fibTail(n, a, b int) int {
	if n <= 2 {
		return b
	}

	return fibTail(n-1, b, a+b)
}
