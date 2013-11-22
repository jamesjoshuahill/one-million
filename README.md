# Algorithms

This section is more of a problem solving exercise in code. The task is
simple: the solution might not be.

The challenge here is to write a Ruby script that outputs every number
from 1 (one) to 1,000,000 (one million), but the output should be in
words. Example output is as follows:

```
one
two
three
...
one hundred and twelve
one hundred and thirteen
...
four hundred and seventeen thousand one hundred and
fifty four four hundred and seventeen thousand one
hundred and fifty five
...
nine hundred and ninety nine thousand nine hundred
and ninety nine one million
```

## Response

I chose to monkey patch Fixnum for this exercise, but it would probably be
better to make this code into a module for use in production.

I used RSpec and Guard for TDD with continuous testing.

I then refactored the code several times with the aim of improving readability
and dividing the code into parts that could be reused.

To print one to a million in words execute the script provided:

```
$ ./one_to_a_million
```