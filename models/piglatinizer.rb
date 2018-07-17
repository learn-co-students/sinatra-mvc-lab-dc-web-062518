class PigLatinizer

  def initialize
  end

  def piglatinize(string)
    a = string.split(" ")
    if a.length == 1
      return PigLatinizer.word(a[0])
    else
      b = a.map do |word|
        PigLatinizer.word(word)
      end
      b.join(" ")
    end
  end

  def self.word(word)
    first_letter = word[0].downcase
    if first_letter == "a" || first_letter == "e" || first_letter == "i" || first_letter == "o" || first_letter == "u"
      "#{word}way"
    else
      consonants = []
      consonants << word[0]
        if word[1] != "a" && word[1] != "e" && word[1] != "i" && word[1] != "o" && word[1] != "u" && word[1] != "y"
          consonants << word[1]
          if word[2] != "a" && word[2] != "e" && word[2] != "i" && word[2] != "o" && word[2] != "u" && word[2] != "y"
            consonants << word[2]
          end
        end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
  end
end
