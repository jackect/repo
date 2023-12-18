package main

import (
	"encoding/base64"
	"encoding/json"
	"fmt"
	"log"
	"math/rand"
	"net/http"
	_ "net/http/pprof"
	"strconv"
	// jsoniter "github.com/json-iterator/go"
)

type RandomDataHandler struct{}

func (h *RandomDataHandler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	// 生成随机JSON数据
	data := make([]map[string]interface{}, 0)
	n := r.URL.Query().Get("n")
	if n == "" {
		n = "10"
	}
	nx, e := strconv.Atoi(n)
	if e != nil {
		nx = 1
		fmt.Println("n is not number")
	}
	rd := generateRandomBytes(10)
	rd2 := generateRandomBytes(50)
	for i := 0; i < nx; i++ {
		randomData := map[string]interface{}{
			"id":    rand.Intn(100) + 1,
			"name":  base64.StdEncoding.EncodeToString(rd),
			"value": base64.StdEncoding.EncodeToString(rd2),
		}
		data = append(data, randomData)
	}
	response := map[string]interface{}{
		"data": data,
	}
	// 返回JSON响应
	w.Header().Set("Content-Type", "application/json")
	d, e := json.Marshal(response)
	if e != nil {
		fmt.Println(e)
		return
	}
	w.Write(d)
	// json.NewEncoder(w).Encode(response)
}

func generateRandomBytes(n int) []byte {
	b := make([]byte, n)
	rand.Read(b)
	return b
}

func main() {
	addr := ":8000"
	http.Handle("/", &RandomDataHandler{})
	go func() {
		err := http.ListenAndServe(addr, nil)
		if err != nil {
			log.Fatal("Unable to start server:", err)
		}
	}()

	fmt.Println("Listening on", addr)

	// 阻止主程序退出
	select {}
}
