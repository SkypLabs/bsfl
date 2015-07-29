# BSFL

This project is a fork of the original work of Louwrentius.

The Bash Shell Function Library (BSFL) is a small Bash script that acts as a library for bash scripts. It provides a couple of functions that makes the lives of most people using shell scripts a bit easier.

## Getting started

In order to use BSFL functions, you have to include the library in your Bash scripts. You can do it with an absolute path :

	source <absolute path to BSFL>

For example :

	source /opt/bsfl/bsfl.sh

Or with a relative path :

	declare -r DIR=$(cd "$(dirname "$0")" && pwd)
	source $DIR/<relative path to BSFL>

For example :

	declare -r DIR=$(cd "$(dirname "$0")" && pwd)
	source $DIR/../lib/bsfl.sh

## Dependencies

This library is implemented for bash version 4. Prior versions of bash will fail at interpreting that code.

In addition, BSFL depends of some external programs. Here is the list of these programs :

* tr
* logger
* date
* tput
* grep
* printf
* sed

However, we try to get as much as possible a standalone library. Hence, some of these external dependencies will be removed in the future.

## What's next ?

The best way to learn how does BSFL work is to look at the examples available in the [examples][2] folder.

## Build documentation

Building the documentation is done by using Doxygen :

	cd <path to BSFL repository>/doc
	doxygen Doxyfile

## License

[New BSD][1]

 [1]: http://opensource.org/licenses/BSD-3-Clause
 [2]: https://github.com/SkypLabs/bsfl/tree/master/examples
