require './one_million'

describe Fixnum do
  
  context 'should output its value in words' do

    example '1' do
      expect(1.in_words).to eq 'one'
    end

    example '1..19' do
      one_to_19_in_words = (1..19).to_a.map(&:in_words).join(' ')
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
                                        "nineteen"].join(' ')
    end

  end

end