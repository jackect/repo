package main

import (
	"context"
	"fmt"
	"os"
	"os/user"
	"time"
)

func main() {
	dir, e := os.UserHomeDir()
	user, e2 := user.Current()
	c, e3 := os.UserConfigDir()
	d3, e4 := os.UserCacheDir()
	fmt.Println("Hello world!")
	context.TODO()
	// <-time.After(2 * time.Second)
	time.Ticker
	fmt.Println(1, dir, e)
	go func() {
		fmt.Println(2, user, e2)
	}()
	go func() {
		fmt.Println(3, c, e3)
	}()
	fmt.Println(4, d3, e4)
	time.Sleep(time.Second)
}
