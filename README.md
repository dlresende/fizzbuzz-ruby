[![Build Status](https://travis-ci.com/dlresende/fizzbuzz.svg?branch=go)](https://travis-ci.com/dlresende/fizzbuzz)
[![codecov](https://codecov.io/gh/dlresende/fizzbuzz/branch/go/graph/badge.svg)](https://codecov.io/gh/dlresende/fizzbuzz)

# Fizzbuzz

This is an experiment exploring:
- building and and distributing Go apps
- generating code coverage
- performing code analysis
- auto-bumping dependencies

The word game [Fizz buzz](https://en.wikipedia.org/wiki/Fizz_buzz) was used as a basis for this exercise.

## Installation

Install it yourself as:

```
$ go get -u github.com/dlresende/fizzbuzz
```

This will pull code from the default branch on Github.

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

After checking out the repo, to run the tests go:

```
$ go test ./... 
```

It is also possible to run tests using Ginkgo:

```
$ ginkgo
```

For test coverage, run:

```
$ go test -coverprofile=c.out
$ go tool cover -html=c.out
```

You can also use Ginkgo for test coverage:

```
$ ginkgo -cover
```

The folder structure of this project follows the 1 command convention described [here](https://flaviocopes.com/go-filesystem-structure/).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dlresende/fizzbuzz.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


