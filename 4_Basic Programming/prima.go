package main

import "fmt"

func primeNumber(number int) bool {
	prima := 0
	for i := 1; i <= number; i++ {
		if number%i == 0 {
			prima++
		}
	}
	if prima == 2 {
		return true
	}
	return false
}

func main() {
	var Number int
	fmt.Println("Program menentukan bilangan prima")
	fmt.Printf("Input bilangan :")
	fmt.Scanf("%d", &Number)
	fmt.Println(primeNumber(Number))
	fmt.Println(primeNumber(11))
	fmt.Println(primeNumber(13))
	fmt.Println(primeNumber(17))
	fmt.Println(primeNumber(20))
	fmt.Println(primeNumber(35))

}
