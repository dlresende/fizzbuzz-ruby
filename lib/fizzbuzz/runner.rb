# frozen_string_literal: true

require 'fizzbuzz/parser'
require 'fizzbuzz/counter'

module Fizzbuzz
  class Runner
    def self.run(args)
      number = Parser.parse(args)
      Counter.count_until(number)
    end
  end
end
