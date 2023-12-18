package main

import (
	"context"
	"fmt"
	"syscall"

	"github.com/shirou/gopsutil/v3/cpu"
	"github.com/shirou/gopsutil/v3/mem"
)

func mem_sum(ctx context.Context) {
	fmt.Println(mem.SwapDevices())
}

func main() {
	fmt.Println("ok")
	fmt.Println(syscall.Sysctl("kern.uuid"))
	fmt.Println(cpu.Counts(true))
	fmt.Println(mem.VirtualMemory())
}
