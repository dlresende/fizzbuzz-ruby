package main

import (
	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"
)

var _ = Describe("fizzbuzz", func() {

  Context("should return error message", func() {
    It("when called with no arguments", func() {
      noArgs := []string{}

      _, err := Parse(noArgs)

      Expect(err).To(HaveOccurred())
      Expect(err).To(MatchError("Usage: fizzbuzz <number>"))
    })
  })
})
