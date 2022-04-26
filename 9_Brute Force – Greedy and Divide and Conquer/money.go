package main

import "fmt"

func moneyCoins(money int) []int {
	pecahancoin := []int{10000, 5000, 2000, 1000, 500, 200, 100, 50, 20, 10, 1}
	hasil := []int{}

	for money > 0 {
		for _, coin := range pecahancoin {
			state := money % coin
			if state-money == 0 {
				continue
			} else {
				money = money - coin
				hasil = append(hasil, coin)
				break
			}
		}
	}
	return hasil
}

func main() {
	fmt.Println(moneyCoins(123))
	fmt.Println(moneyCoins(432))
	fmt.Println(moneyCoins(543))
	fmt.Println(moneyCoins(7752))
	fmt.Println(moneyCoins(15321))
}
