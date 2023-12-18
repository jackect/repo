package main

import (
	"fmt"
	"net"
)

func main() {
	ifs, err := net.Interfaces()
	if err != nil {
		fmt.Println("Error: ", err)
	}
	for _, i := range ifs {
		fmt.Println(i.Name)
	}

}
