package main

import (
	"encoding/json"
	"fmt"
	"reflect"
)

type Person struct {
	ID        int
	FirstName string `json:"name"`
	LastName  string
	Address   string `json:"address,omitempty"`
}

type Employee struct {
	Person
	ManagerID int
}

type Contractor struct {
	Person
	CompanyID int
}

func main() {
	employees := []Employee{
		Employee{
			Person: Person{
				LastName: "Doe", FirstName: "John",
			},
		},
		Employee{
			Person: Person{
				LastName: "Campbell", FirstName: "David",
			},
		},
	}

	data, _ := json.Marshal(employees)
	str := `[{"ID":78164598734,"name":"John","LastName":"Doe","ManagerID":0},{"ID":0,"name":"David","LastName":"Campbell","ManagerID":0}]`
	fmt.Println(reflect.TypeOf(str))
	fmt.Printf("%s\n", data)

	var decoded []Employee
	json.Unmarshal([]byte(str), &decoded)
	fmt.Printf("%v", decoded)
}
