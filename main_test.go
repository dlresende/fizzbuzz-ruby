package main

import (
	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"
)

var _ = Describe("fizzbuzz", func() {

  It("should count with fizzes and buzzes", func() {
    count := Count(15)

    Expect(count).To(Equal([]string{
      "1",
      "2",
      "fizz",
      "4",
      "buzz",
      "fizz",
      "7",
      "8",
      "fizz",
      "buzz",
      "11",
      "fizz",
      "13",
      "14",
      "fizzbuzz"}))
  })

  It("should say the number itself if not divisible by 3 or 5", func() {
    word := Say(14)

    Expect(word).To(Equal("14"))
  })

  It("should say 'fizzbuzz' if number divisible by 3 and 5", func() {
    word := Say(15)

    Expect(word).To(Equal("fizzbuzz"))
  })

  It("should say 'buzz' if number divisible by 5", func() {
    word := Say(5)

    Expect(word).To(Equal("buzz"))
  })

  It("should say 'fizz' if number divisible by 3", func() {
    word := Say(3)

    Expect(word).To(Equal("fizz"))
  })

  Context("should return a number", func() {
    It("when called with a number", func() {
      _1 := []string{"1"}

      number, err := Parse(_1)

      Expect(err).NotTo(HaveOccurred())
      Expect(number).To(Equal(1))
    })
  })

  Context("should return error message", func() {
    It("when called with no arguments", func() {
      noArgs := []string{}

      _, err := Parse(noArgs)

      Expect(err).To(HaveOccurred())
      Expect(err).To(MatchError("Usage: fizzbuzz <number>"))
    })

    It("when called with more than 1 argument", func() {
      manyArgs := []string{"1", "2"}

      _, err := Parse(manyArgs)

      Expect(err).To(HaveOccurred())
      Expect(err).To(MatchError("Usage: fizzbuzz <number>"))
    })

    It("when called with an argument that's not a number", func() {
      notANumber := []string{"not a number"}

      _, err := Parse(notANumber)

      Expect(err).To(HaveOccurred())
      Expect(err).To(MatchError("Usage: fizzbuzz <number>"))
    })
  })
})
