package main

import "fmt"

func BinarySearch(array []int, x int) {
	bawah := 0
	atas := len(array) - 1
	for bawah <= atas {
		tengah := (bawah + atas) / 2
		if x < array[tengah] {
			atas = tengah - 1
		} else if x > array[tengah] {
			bawah = tengah + 1
		} else if x == array[tengah] {
			fmt.Println(tengah)
			return
		}
	}
	fmt.Println("-1")

}

func main() {
	BinarySearch([]int{1, 2, 3, 5, 6, 8, 10}, 3)
	BinarySearch([]int{1, 2, 3, 5, 6, 8, 10}, 5)
	BinarySearch([]int{12, 15, 15, 19, 24, 31, 53, 59, 60}, 42)
	BinarySearch([]int{12, 15, 19, 24, 31, 53, 59, 60}, 100)
}
