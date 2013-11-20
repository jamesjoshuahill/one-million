require './one_million'

describe Fixnum do
  
  context 'should output its value in words' do

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

  end

end