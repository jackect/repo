package main

import (
	"crypto/rand"
	"fmt"
)

func main() {
	// 创建一个字节切片来保存生成的随机字节序列
	randomBytes := make([]byte, 16)

	// 从随机源中读取随机字节序列
	_, err := rand.Read(randomBytes)
	if err != nil {
		fmt.Println("Error generating random bytes:", err)
		return
	}

	// 将随机字节序列转换为十六进制字符串表示
	randomHex := fmt.Sprintf("%x", randomBytes)
	fmt.Println(randomHex)
}
