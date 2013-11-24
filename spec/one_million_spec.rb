require './one_million'

describe Fixnum do
  
  context 'should output its value in words' do

    context 'zero or less' do

      example 'zero' do
        expect(0.in_words).to be nil
      end

      example '-123' do
        expect(-123.in_words). to be nil
      end

    end

    context 'first 19 integers' do

      example '1..19' do
        words = (1..19).to_a.map(&:in_words)
        expect(words).to eq ["one",
                             "two",
                             "three",
                             "four",
                             "five",
                             "six",
                             "seven",
                             "eight",
                             "nine",
                             "ten",
                             "eleven",
                             "twelve",
                             "thirteen",
                             "fourteen",
                             "fifteen",
                             "sixteen",
                             "seventeen",
                             "eighteen",
                             "nineteen"]
      end

    end

    context 'multiples of 10 from 20 to 90' do

      example '20, 30, ..90' do
        words = [20, 30, 40, 50, 60, 70, 80, 90].map(&:in_words)
        expect(words).to eq ["twenty",
                             "thirty",
                             "forty",
                             "fifty",
                             "sixty",
                             "seventy",
                             "eighty",
                             "ninety"]
      end

    end

    context 'integers from 20 up to 99 that are not multiples of 10' do

      example '21, 31, ..91' do
        words = [21, 31, 41, 51, 61, 71, 81, 91].map(&:in_words)
        expect(words).to eq ["twenty one",
                             "thirty one",
                             "forty one",
                             "fifty one",
                             "sixty one",
                             "seventy one",
                             "eighty one",
                             "ninety one"]
      end

      example '22, 33, 44, 55, 66, 77, 88, 99' do
        words = [22, 33, 44, 55, 66, 77, 88, 99].map(&:in_words)
        expect(words).to eq ["twenty two",
                             "thirty three",
                             "forty four",
                             "fifty five",
                             "sixty six",
                             "seventy seven",
                             "eighty eight",
                             "ninety nine"]
      end

    end

    context 'integers from 100 to 1000' do

      example '100, 900' do
        words = [100, 900].map(&:in_words)
        expect(words).to eq ["one hundred",
                             "nine hundred"]
      end

      example '101, 430, 899' do
        words = [101, 430, 899].map(&:in_words)
        expect(words).to eq ["one hundred and one",
                             "four hundred and thirty",
                             "eight hundred and ninety nine"]
      end

    end

    context 'integers from 1,000 to 999,999' do

      example '1000, 13,000, 26,000, 414,000, 878,000' do
        words = [1000, 13000, 26000, 414000, 878000].map(&:in_words)
        expect(words).to eq ["one thousand",
                             "thirteen thousand",
                             "twenty six thousand",
                             "four hundred and fourteen thousand",
                             "eight hundred and seventy eight thousand"]
      end

      example '1001, 9099, 10001, 90099, 100001, 900099' do
        words = [1001, 9099, 10001, 90099, 100001, 900099].map(&:in_words)
        expect(words).to eq [
          "one thousand and one",
          "nine thousand and ninety nine",
          "ten thousand and one",
          "ninety thousand and ninety nine",
          "one hundred thousand and one",
          "nine hundred thousand and ninety nine"
        ]
      end

      example '2111, 14,123, 26,456, 517,789, 983,123' do
        words = [2111, 14123, 26456, 517789, 983123].map(&:in_words)
        expect(words).to eq [
          "two thousand one hundred and eleven",
          "fourteen thousand one hundred and twenty three",
          "twenty six thousand four hundred and fifty six",
          "five hundred and seventeen thousand seven hundred and eighty nine",
          "nine hundred and eighty three thousand one hundred and twenty three"
        ]
      end

    end

    context 'one million' do

      example '1,000,000' do
        expect(1000000.in_words).to eq "one million"
      end

    end

    context 'over one million' do

      example '1,000,001' do
        expect(1000001.in_words).to be nil
      end

      example '1,234,567' do
        expect(1234567.in_words).to be nil
      end

    end

  end

end
