class PigLatinizer

  def initialize
  end

  def piglatinize(string)
    a = string.split(" ")
    b = a.map {|word| PigLatinizer.word(word)}
    b.join(" ")
  end

  def self.word(word)
    first_letter = word[0].downcase
    if self.vowel?(first_letter)
      "#{word}way"
    else
      consonants = []
      consonants << word[0]
        if self.vowel?(word[1]) == false || word[1] != "y"
          consonants << word[1]
          if self.vowel?(word[2]) == false || word[2] != "y"
            consonants << word[2]
          end
        end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
  end

  def vowel?(letter)
    ["a", "e", "i", "o", "u"].include?(letter)
  end

end
