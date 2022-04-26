package main

import "fmt"

func swap(a, b *int) {
	tempa := *b
	tempb := *a
	*a = tempa
	*b = tempb

}

func main() {
	a := 10
	b := 20

	swap(&a, &b)
	fmt.Println(a, b)

}
