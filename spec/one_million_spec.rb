require './one_million'

describe Fixnum do
  
  context 'should output its value in words' do

    context 'first 19 integers' do

      example '1..19' do
        one_to_19_in_words = (1..19).to_a.map(&:in_words)
        expect(one_to_19_in_words).to eq ["one",
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
        twenty_to_ninety_in_words = [20, 30, 40, 50, 60, 70, 80, 90].map(&:in_words)
        expect(twenty_to_ninety_in_words).to eq ["twenty",
                                                 "thirty",
                                                 "forty",
                                                 "fifty",
                                                 "sixty",
                                                 "seventy",
                                                 "eighty",
                                                 "ninety"]
      end

    end

  end

end