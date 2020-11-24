package main

import (
	"errors"
	"fmt"
	"os"
	"strconv"
)

func main() {
  until, err := Parse(os.Args[1:])

  if err != nil {
    fmt.Fprintln(os.Stderr, err)
    os.Exit(1)
  }

  for _, word := range Count(until) {
    fmt.Println(word)
  }
}

func Parse(args []string) (int, error) {
  if len(args) == 1 {
    number, err := strconv.Atoi(args[0])

    if err == nil {
      return number, nil
    }
  }

  return 0, errors.New("Usage: fizzbuzz <number>")
}

func Count(until int) []string {
  count := make([]string, until)

  for i := 0; i < until; i++ {
    count[i] = Say(i+1)
  }

  return count
}

func Say(number int) string {
  if isDivisibleBy(number, 3*5) {
    return "fizzbuzz"
  }

  if isDivisibleBy(number, 5) {
    return "buzz"
  }

  if isDivisibleBy(number, 3) {
    return "fizz"
  }

  return strconv.Itoa(number)
}

func isDivisibleBy(dividend int, divisor int) bool {
  return dividend % divisor == 0
}
