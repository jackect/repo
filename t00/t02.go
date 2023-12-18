package main

import (
	"fmt"
	"math/rand"
)

func main() {
	// 设置随机种子，可以保证每次运行产生不同的随机数序列
	// rand.Seed(1)

	// 生成一个0到100之间的随机整数
	randomNumber := rand.Intn(101)
	fmt.Println(randomNumber)
	randomNumber = rand.Intn(101)
	fmt.Println(randomNumber)
}
