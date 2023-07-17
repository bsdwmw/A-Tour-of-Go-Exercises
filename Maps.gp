// Exercise: Maps
package main

import (
	"golang.org/x/tour/wc"
	"strings"
)


func WordCount(s string) map[string]int {
	m := strings.Fields(s)
	n := make(map[string]int)
	for i := range m {
		_, ok := n[m[i]]
		if ok == false {
			n[m[i]] = 1
		} else {
			n[m[i]] += 1
		}
	}
		
	return n 
}

func main() {
	wc.Test(WordCount)
}
