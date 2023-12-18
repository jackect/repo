package practice

import (
	"fmt"
	"strings"
)

var romanToNum = map[string]int{
	"M": 1000,
	"D": 500,
	"C": 100,
	"L": 50,
	"X": 10,
	"V": 5,
	"I": 1,
}

func romanToArabic(roman string) (int, error) {
	arabic := 0
	prevValue := 0
	// 将罗马数字字符串转换为大写
	roman = strings.ToUpper(roman)
	for i := len(roman) - 1; i >= 0; i-- {
		value, ok := romanToNum[string(roman[i])]
		if !ok {
			return 0, fmt.Errorf("无效的罗马数字：%s", string(roman[i]))
		}
		// 根据规则判断数字应该相加还是相减
		if value >= prevValue {
			arabic += value
		} else {
			arabic -= value
		}
		prevValue = value
	}

	return arabic, nil
}

func romanToArabic2(numeral string) int {
	romanMap := map[rune]int{
		'M': 1000,
		'D': 500,
		'C': 100,
		'L': 50,
		'X': 10,
		'V': 5,
		'I': 1,
	}

	arabicVals := make([]int, len(numeral)+1)

	for index, digit := range numeral {
		if val, present := romanMap[digit]; present {
			arabicVals[index] = val
		} else {
			fmt.Printf("Error: The roman numeral %s has a bad digit: %c\n", numeral, digit)
			return 0
		}
	}

	total := 0

	for index := 0; index < len(numeral); index++ {
		if arabicVals[index] < arabicVals[index+1] {
			arabicVals[index] *= -1
		}
		total += arabicVals[index]
	}

	return total
}
