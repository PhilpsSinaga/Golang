package main

import "fmt"

func ArrayMerge(arrayA, arrayB []string) []string {
	cek := make(map[string]int)
	merge := append(arrayA, arrayB...)
	hasil := make([]string, 0)
	for _, value := range merge {
		cek[value] = 1
	}

	for kata, _ := range cek {
		hasil = append(hasil, kata)
	}
	return hasil

}
func main() {
	fmt.Println(ArrayMerge([]string{"king", "devil jin", "akuma"}, []string{"eddie", "steve", "geese"}))
	fmt.Println(ArrayMerge([]string{"sergei", "jin"}, []string{"jin", "steve", "bryan"}))
	fmt.Println(ArrayMerge([]string{"alisa", "yoshimitsu"}, []string{"devil jin", "yoshimitsu", "alisa", "law"}))
	fmt.Println(ArrayMerge([]string{}, []string{"devil jin", "sergei"}))
	fmt.Println(ArrayMerge([]string{"hworang"}, []string{}))
	fmt.Println(ArrayMerge([]string{}, []string{}))
}
