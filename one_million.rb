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
    elsif self < 1000000
      number_in_words
    elsif self == 1000000
      "one million"
    end
  end

  def number_in_words
    return power_of_ten_in_words if self.multiple_of?(magnitude)
    long_number_in_words
  end

  def power_of_ten_in_words
    case magnitude
    when 10
      return NUMBERS_IN_WORDS[self]
    when 100
      magnitude_word = " hundred"
    when 1000
      magnitude_word = " thousand"
    end
    (self / magnitude).in_words + magnitude_word
  end

  def long_number_in_words
    separator = (magnitude == 100) ? ' and ' : ' '
    nearest_multiple_and_remainder_of(magnitude).map(&:in_words).join(separator)
  end

  def magnitude
    return 1000 if self.digits > 4
    10 ** (self.digits - 1)
  end

  def digits
    self.to_s.length
  end

  def multiple_of?(x)
    self % x == 0
  end

  def nearest_multiple_and_remainder_of(x)
    nearest_multiple, remainder = self.divmod(x)
    [nearest_multiple * x, remainder]
  end

end
