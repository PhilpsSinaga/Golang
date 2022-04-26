package main

import "fmt"

func caesar(offset int, input string) string {
	encode, decode := rune(offset), rune(26)
	result := []rune(input)

	for index, char := range result {
		if char >= 'a' && char <= 'z'-encode ||
			char >= 'A' && char <= 'Z'-encode {
			char = char + encode
		} else if char > 'z'-encode && char <= 'z' ||
			char > 'Z'-encode && char <= 'Z' {
			char = char + encode - decode
		}
		result[index] = char
	}
	return string(result)
}

func main() {
	// a := "kamu"
	// for _, kata := range a {
	// 	hasil := kata + 3
	// 	for _, hasil1 := range hasil {

	// 	}
	// }

	fmt.Println(caesar(3, "abc"))
	fmt.Println(caesar(2, "alta"))
	fmt.Println(caesar(10, "alterraacademy"))
	fmt.Println(caesar(1, "abcdefghijklmonpqrstuvwxyz"))
	fmt.Println(caesar(1000, "abcdefghijklmopqrstuvwxyz"))
}
