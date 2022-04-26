package main

import "fmt"

func palindrome(input string) bool {
	for i := 0; i < len(input)/2; i++ {
		if input[i] != input[len(input)-i-1] {
			return false
		}

	}
	return true

}

func main() {

	var kata string
	fmt.Println("Program untuk menentukan palindrome")
	fmt.Printf("Input string : ")
	fmt.Scanf("%s", &kata)
	hasil := palindrome
	string := hasil(kata)

	if string == true {
		fmt.Println("Palindrome")
	} else {
		fmt.Println("Bukan Palindrome")
	}
}
