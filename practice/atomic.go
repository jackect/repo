package practice

import (
	"fmt"
	"sync"
	"sync/atomic"
)

func NoAtomic() {
	var counter int
	var wg sync.WaitGroup
	n := 1000
	wg.Add(n)
	for i := 0; i < n; i++ {
		go func() {
			wg.Done()
			counter += 1
		}()
	}
	wg.Wait()
	fmt.Println("Counter:", counter)
}

func Atomic() {
	var counter int32
	var wg sync.WaitGroup
	n := 1000
	wg.Add(n)
	for i := 0; i < n; i++ {
		go func() {
			defer wg.Done()
			atomic.AddInt32(&counter, 1)
		}()
	}
	wg.Wait()
	fmt.Println("Counter:", counter)
}
