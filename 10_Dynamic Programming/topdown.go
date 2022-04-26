package main

import "fmt"

var datatopdown = make(map[int]int)

func fibo(n int) int {

	nilai, sudahterhitung := datatopdown[n]
	if sudahterhitung {
		return nilai
	}

	if n <= 1 {
		datatopdown[n] = n
	} else {
		datatopdown[n] = fibo(n-1) + fibo(n-2)
	}
	return datatopdown[n]
}

func main() {
	fmt.Println(fibo(0))
	fmt.Println(fibo(1))
	fmt.Println(fibo(2))
	fmt.Println(fibo(3))
	fmt.Println(fibo(5))
	fmt.Println(fibo(6))
	fmt.Println(fibo(7))
	fmt.Println(fibo(9))
	fmt.Println(fibo(10))

}
