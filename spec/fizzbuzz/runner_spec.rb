# frozen_string_literal: true

RSpec.describe Fizzbuzz::Runner do
  it 'should parse args and count' do
    expect { Fizzbuzz::Runner.run(['15']) }.to output(
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
