# frozen_string_literal: true

RSpec.describe Fizzbuzz::Counter do
  it 'should return numbers from 1 to N' do
    expect { Fizzbuzz::Counter.count_until(2) }.to output(
      '1' + "\n" \
      '2' + "\n" \
    ).to_stdout
  end

  it 'should return fizz if number is divisible by 3' do
    expect { Fizzbuzz::Counter.count_until(3) }.to output(
      '1'    + "\n" \
      '2'    + "\n" \
      'fizz' + "\n"
    ).to_stdout
  end

  it 'should return buzz if number is divisible by 5' do
    expect { Fizzbuzz::Counter.count_until(5) }.to output(
      '1'    + "\n" \
      '2'    + "\n" \
      'fizz' + "\n" \
      '4'    + "\n" \
      'buzz' + "\n"
    ).to_stdout
  end

  it 'should return fizzbuzz if number is divisible by 3 and 5' do
    expect { Fizzbuzz::Counter.count_until(15) }.to output(
      '1'        + "\n" \
      '2'        + "\n" \
      'fizz'     + "\n" \
      '4'        + "\n" \
      'buzz'     + "\n" \
      'fizz'     + "\n" \
      '7'        + "\n" \
      '8'        + "\n" \
      'fizz'     + "\n" \
      'buzz'     + "\n" \
      '11'       + "\n" \
      'fizz'     + "\n" \
      '13'       + "\n" \
      '14'       + "\n" \
      'fizzbuzz' + "\n"
    ).to_stdout
  end
end
