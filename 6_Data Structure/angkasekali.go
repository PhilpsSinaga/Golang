package main

import "fmt"

func munculSekali(angka string) []int {
	b := make([]string, 0)
	b = append(b, angka)
	var uni []int
	for i := 0; i < len(angka); i++ {
		for j := i; j < len(angka); j++ {
			if angka[i] != angka[j] {
				uni[i] = i
			}
		}
	}
	return uni
}

func main() {

	fmt.Println(munculSekali("1234123"))

}
