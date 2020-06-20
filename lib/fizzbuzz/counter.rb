# frozen_string_literal: true

module Fizzbuzz
  class Counter
    class << self
      def count_until(number)
        number.times { |i| puts guess(i + 1) }
      end

      private

      def guess(number)
        return 'fizzbuzz' if (number % (3 * 5)).zero?
        return 'buzz' if (number % 5).zero?
        return 'fizz' if (number % 3).zero?

        number.to_s
      end
    end
  end
end
