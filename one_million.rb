class Fixnum

  def in_words
    numbers_in_words =  {
      1       => "one",
      2       => "two",
      3       => "three",
      4       => "four",
      5       => "five",
      6       => "six",
      7       => "seven",
      8       => "eight",
      9       => "nine",
      10      => "ten",
      11      => "eleven",
      12      => "twelve",
      13      => "thirteen",
      14      => "fourteen",
      15      => "fifteen",
      16      => "sixteen",
      17      => "seventeen",
      18      => "eighteen",
      19      => "nineteen",
      20      => "twenty",
      30      => "thirty",
      40      => "forty",
      50      => "fifty",
      60      => "sixty",
      70      => "seventy",
      80      => "eighty",
      90      => "ninety"
    }
    if self < 20
      numbers_in_words[self]
    elsif self.multiple_of?(10) && self < 100
      numbers_in_words[self]
    elsif self < 100
      ones_digit = self % 10
      tens_digit = self - ones_digit
      
      [tens_digit, ones_digit].map(&:in_words).join(' ')
    elsif self.multiple_of?(100) && self < 1000
      hundreds_digit = self / 100

      hundreds_digit.in_words + " hundred"
    elsif self < 1000
      remainder = self % 100
      hundreds = self - remainder

      hundreds.in_words + " and " + remainder.in_words
    elsif self.multiple_of?(1000) && self < 1000000
      thousands = self / 1000

      thousands.in_words + " thousand"
    elsif self < 1000000
      remainder = self % 1000
      thousands = self - remainder

      thousands.in_words + " " + remainder.in_words
    elsif self == 1000000
      "one million"
    end
  end

  def multiple_of?(x)
    self % x == 0
  end

end
