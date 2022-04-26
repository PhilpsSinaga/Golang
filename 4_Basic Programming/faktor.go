package main

import "fmt"

func main() {
	var bilangan int
	fmt.Println("Program untuk Faktorial Bilangan")
	fmt.Printf("Masukan Nilai : ")
	fmt.Scanf("%d", &bilangan)

	for i := 1; i <= bilangan; i++ {
		if bilangan%i == 0 {
			println(i)
		}

	}

}
