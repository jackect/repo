package practice

func FizzBuzz() {
	for i := 1; i <= 100; i++ {
		switch {
		case i%15 == 0:
			print("FizzBuzz")
		case i%3 == 0:
			print("Fizz")
		case i%5 == 0:
			print("Buzz")
		default:
			print(i)
		}
		print("\n")
	}
}
