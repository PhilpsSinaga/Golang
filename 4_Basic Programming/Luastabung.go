package main

import "fmt"

func luas(jari, tinggi float64) (luas float64) {
	const phi float64 = 3.14
	luas = 2 * phi * jari * (jari + tinggi)
	return luas
}

func main() {

	var (
		tinggi, jari float64
	)

	fmt.Print("Masukkan tinggi tabung: ")
	fmt.Scanf("%g", &tinggi)

	fmt.Print("Masukkan radius tabung: ")

	fmt.Scanf("%g", &jari)

	fmt.Println(luas(jari, tinggi))
}
