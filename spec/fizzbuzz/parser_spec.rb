# frozen_string_literal: true

RSpec.describe Fizzbuzz::Parser do
  it 'should return error message if no argument is passed' do
    expect { Fizzbuzz::Parser.parse([]) }.to raise_error('Usage: fizzbuzz <number>')
  end

  it 'should return error message if more than 1 argument is passed' do
    expect { Fizzbuzz::Parser.parse(%w[1 2]) }.to raise_error('Usage: fizzbuzz <number>')
  end

  it 'should return error message if argument is not integer' do
    expect { Fizzbuzz::Parser.parse(['one']) }.to raise_error('Usage: fizzbuzz <number>')
  end

  it 'should parse argument to integer' do
    expect(Fizzbuzz::Parser.parse(['1'])).to be(1)
  end
end
