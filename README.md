[![Build Status](https://travis-ci.com/dlresende/fizzbuzz.svg?branch=main)](https://travis-ci.com/dlresende/fizzbuzz)
[![codecov](https://codecov.io/gh/dlresende/fizzbuzz/branch/main/graph/badge.svg)](https://codecov.io/gh/dlresende/fizzbuzz)

# Fizzbuzz

This is an experiment exploring:
- building and publishing a Ruby gem
- using the gem as a binary
- generating code coverage
- performing code analysis
- auto-bumping dependencies

The word game [Fizz buzz](https://en.wikipedia.org/wiki/Fizz_buzz) was used as a basis for this exercise.

## Installation

Install it yourself as:

    $ gem install fizzbuzz --source https://repo.fury.io/dlresende/

## Usage

Just call `fizzbuzz <number>`, i.e.:

```shell
$ fizzbuzz 15
1
2
fizz
4
buzz
fizz
7
8
fizz
buzz
11
fizz
13
14
fizzbuzz
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rake spec` to run the tests (code coverage will be available at `coverage/index.html`). You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [gemfury.com](https://gemfury.com/dlresende).

Run `bundle exec rake rubocop` perform code analysis.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dlresende/fizzbuzz.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
