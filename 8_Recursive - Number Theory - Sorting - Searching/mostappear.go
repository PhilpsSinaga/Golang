package main

import "fmt"

type pair struct {
	name  string
	count int
}

func MostAppearItem(items []string) []pair {
	data := make(map[string]int)
	for _, key := range items {
		count := data[key]
		if count == data[key] {
			data[key] = count + 1
		} else {
			data[key] = 1
		}
	}
	result := []pair{}
	for key, value := range data {
		result = append(result, pair{key, value})
	}
	fmt.Println(data)
	return result
}

func main() {
	fmt.Println(MostAppearItem([]string{"js", "js", "golang", "ruby", "ruby", "js", "js"}))
	fmt.Println(MostAppearItem([]string{"A", "B", "B", "C", "A", "A", "B", "A", "D", "D"}))
	fmt.Println(MostAppearItem([]string{"football", "basketball", "tenis"}))
}
