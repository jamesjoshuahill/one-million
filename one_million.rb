class Fixnum

  def in_words
    in_a_word || in_many_words if know_in_words?
  end

  def digits
    to_s.length
  end

  def multiple_of?(x)
    self % x == 0
  end

  private

  IN_A_WORD = {
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

  MAGNITUDE_WORD = {
    100     => "hundred",
    1000    => "thousand",
    1000000 => "million"
  }

  def know_in_words?
    self > 0 && self <= 1000000
  end

  def in_a_word
    IN_A_WORD[self]
  end

  def in_many_words
    multiple_of?(magnitude) ? round_number_in_words : long_number_in_words
  end

  def round_number_in_words
    [(self / magnitude).in_words, magnitude_word].join(' ')
  end

  def long_number_in_words
    magnitude_part_and_remainder.map(&:in_words).join(magnitude_separator)
  end

  def magnitude_part_and_remainder
    quotient, remainder = divmod(magnitude)
    [magnitude * quotient, remainder]
  end

  def magnitude
    return 1000 if (4..6).include?(digits)
    10 ** (digits - 1)
  end

  def magnitude_word
    MAGNITUDE_WORD[magnitude]
  end

  def magnitude_separator
    (remainder(magnitude) < 100 && magnitude > 10) ? ' and ' : ' '
  end

end
