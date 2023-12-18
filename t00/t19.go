package main

import (
	"fmt"
	"time"
)

func main() {
	ticker := time.NewTicker(1 * time.Second)

	go func() {
		for range ticker.C {
			fmt.Println("Ticker触发")
		}
	}()

	time.Sleep(5 * time.Second)
	ticker.Stop()
	fmt.Println("Ticker已停止")
}
