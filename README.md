One Million
-----------

This code test was set by a London tech company.

## The challenge

The challenge was to write a Ruby script that outputs every number
from 1 (one) to 1,000,000 (one million), but the output should be in
words.

## My response

I chose to monkey patch Fixnum for this exercise, but it would probably be
better to make this code into a module for use in production.

I used Ruby 2.0 with RSpec for TDD and Guard for continuous testing. To run the
tests `bundle install` and run `rspec`.

After producing working code I refactored several times to improve readability
and make the code reusable and extendable.

Then I went even further(!) to demonstrate my understanding of the single
responsibility principle and a penchant for code as poetry :o)

To print one to a million in words execute the script provided:

```
$ ./one_to_a_million
```