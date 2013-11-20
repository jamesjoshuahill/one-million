class Fixnum
  
  NUMBERS_IN_WORDS = {
    1  => "one",
    2  => "two",
    3  => "three",
    4  => "four",
    5  => "five",
    6  => "six",
    7  => "seven",
    8  => "eight",
    9  => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety"
  }

  def in_words
    if self < 20
      NUMBERS_IN_WORDS[self]
    elsif self.multiple_of?(10) && self < 100
      NUMBERS_IN_WORDS[self]
    elsif self < 100
      remainder, tens = remainder_and_multiple_of(10)
      tens.in_words + " " + remainder.in_words
    elsif self.multiple_of?(100) && self < 1000
      (self / 100).in_words + " hundred"
    elsif self < 1000
      remainder, hundreds = remainder_and_multiple_of(100)
      hundreds.in_words + " and " + remainder.in_words
    elsif self.multiple_of?(1000) && self < 1000000
      (self / 1000).in_words + " thousand"
    elsif self < 1000000
      remainder, thousands = remainder_and_multiple_of(1000)
      thousands.in_words + " " + remainder.in_words
    elsif self == 1000000
      "one million"
    end
  end

  def multiple_of?(x)
    self % x == 0
  end

  def remainder_and_multiple_of(x)
    remainder = self % x
    multiple = self - remainder

    [remainder, multiple]
  end

end
