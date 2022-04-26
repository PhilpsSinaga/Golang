package main

import "fmt"

type Student struct {
	name  []string
	score []int
}

func (s Student) Average() float64 {
	var sum int
	for i := 0; i < len(s.score); i++ {
		sum += s.score[i]
	}
	hasil := float64(sum / len(s.score))
	return hasil
}

func (s Student) Min() (min int, name string) {
	var nilai int
	var nama string
	for i := 0; i < len(s.score); i++ {
		for k := 0; k < len(s.score); k++ {
			if s.score[i] < s.score[k] {
				nilai = s.score[i]
				nama = s.name[i]
			}
		}
	}
	return nilai, nama
}

func (s Student) Max() (max int, name string) {
	nilai := s.score[0]
	var nama string
	for _, value := range s.score {
		if value > nilai {
			nilai = value
		}
	}
	return nilai, nama
}

func main() {
	var a = Student{}

	for i := 0; i < 5; i++ {
		var name string
		fmt.Print("Input " + string(i) + " Student's Name : ")
		fmt.Scan(&name)
		a.name = append(a.name, name)
		var score int
		fmt.Print("Input " + name + " Score : ")
		fmt.Scan(&score)
		a.score = append(a.score, score)

	}

	fmt.Println("\n\n Average Score Students is", a.Average())
	scoreMin, nameMin := a.Min()
	fmt.Println("Minx Score Student is : , "+nameMin+" (", scoreMin, ") ")
	scoreMax, nameMax := a.Max()
	fmt.Println("Max Score Student is : , "+nameMax+" (", scoreMax, ") ")

}
