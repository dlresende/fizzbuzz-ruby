# frozen_string_literal: true

module Fizzbuzz
  class Error < StandardError; end

  class Parser
    def self.parse(args)
      raise Error, 'Usage: fizzbuzz <number>' if args.size != 1

      begin
        Integer(args[0])
      rescue ArgumentError
        raise Error, 'Usage: fizzbuzz <number>'
      end
    end
  end
end
