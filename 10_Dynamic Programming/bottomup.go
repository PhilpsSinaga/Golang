package main

import "fmt"

func fibo(n int) int {
	databottomup := make(map[int]int)
	for i := 0; i <= n; i++ {
		if i <= 1 {
			databottomup[i] = i
			continue
		}
		databottomup[i] = databottomup[i-1] + databottomup[i-2]
	}
	return databottomup[n]
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
