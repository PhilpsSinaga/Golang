package main

import (
	"fmt"
	"strings"
)

func Compare(a, b string) string {
	if len(a) <= len(b) {
		cek := strings.Contains(b, a)
		if cek == true {
		}
		return a
	}
	return b

}

func main() {
	fmt.Println(Compare("AKA", "AKASHI"))
	fmt.Println(Compare("KANGOORO", "KANG"))
	fmt.Println(Compare("KI", "KIJANG"))
	fmt.Println(Compare("KUPU-KUPU", "KUPU"))
	fmt.Println(Compare("ILALANG", "ILA"))

}
