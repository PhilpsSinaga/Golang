package main

import "fmt"

func pangkat(base, eksponen int) int {
	kali := 1
	for eksponen > 0 {
		kali *= base
		eksponen -= 1
	}
	return kali
}

func main() {
	var (
		base     int
		eksponen int
	)
	fmt.Println("Program eksponensial")
	fmt.Printf("Input Bilangan : ")
	fmt.Scanf("%d", &base)
	fmt.Printf("Input Pangkat : ")
	fmt.Scanf("%d", &eksponen)

	hasil := pangkat(base, eksponen)
	fmt.Println(hasil)
	fmt.Println(pangkat(2, 3))
	fmt.Println(pangkat(5, 3))
	fmt.Println(pangkat(10, 2))
	fmt.Println(pangkat(2, 5))
	fmt.Println(pangkat(7, 3))

}
