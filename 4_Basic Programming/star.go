package main

import "fmt"

func PlayWithAsterik(n int) {
	for i := 1; i <= n; i++ {
		a := 0
		for j := 1; j <= n-i; j++ {
			fmt.Printf("  ")
		}
		for {
			fmt.Print("* ")
			a++
			if a == 2*i-1 {
				break
			}
		}
		fmt.Println("")
	}
}

func main() {
	var n int
	fmt.Println("Program print bintang")
	fmt.Printf("Masukan jumlah baris : ")
	fmt.Scanf("%d", &n)
	PlayWithAsterik(n)

}
