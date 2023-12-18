package main

import (
	"encoding/json"
	"fmt"
	"reflect"
)

func main() {
	// JSON数据
	jsonData := `{
		"name": "John",
		"age": 30,
		"address": {
			"street": "123 Main St",
			"city": "New York"
		},
		"phoneNumbers": ["1234567890", "9876543210"],
		"extraData": {
			"key1": "value1",
			"key2": "value2"
		}
	}`

	// 解码JSON数据为map[string]interface{}
	var data map[string]interface{}
	err := json.Unmarshal([]byte(jsonData), &data)
	if err != nil {
		fmt.Println("JSON decoding error:", err)
		return
	}

	// 访问解码后的数据
	str := data["age"]
	fmt.Println(reflect.TypeOf(str), str)
	name := data["name"].(string)
	age := data["age"].(float64)
	address := data["address"].(map[string]interface{})
	street := address["street"].(string)
	city := address["city"].(string)
	phoneNumbers := data["phoneNumbers"].([]interface{})
	extraData := data["extraData"].(map[string]interface{})

	fmt.Println("Name:", name)
	fmt.Println("Age:", age)
	fmt.Println("Street:", street)
	fmt.Println("City:", city)
	fmt.Println("Phone Numbers:", phoneNumbers)
	fmt.Println("Extra Data:", extraData)
}
