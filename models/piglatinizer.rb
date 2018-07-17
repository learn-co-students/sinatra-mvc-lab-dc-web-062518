require 'pry'
class PigLatinizer

  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(word)
    if single_word?(word)
      piglatinizes(word)
    else
      word_arr = word.split(' ')
      pig_arr = []
      word_arr.each do |word|
        pig_word = piglatinizes(word)
        pig_arr << pig_word
      end
    pig_arr.join(' ')
    end
  end

  #HELPER METHODS

  #checks if letter is a vowel
  def vowel(letter)
    if (letter=="a" || letter=="e" || letter=="i" || letter=="o"|| letter=="u")
      true
    elsif (letter=="A" || letter=="E" || letter=="I" || letter=="O"|| letter=="U")
      true
    else
      false
    end
  end

  #checks if string is a single word
  def single_word?(string)
    !string.strip.include? " "
  end

  def piglatinizes(word)
    first_letter = word.split('')[0]
    second_letter = word.split('')[1]
    third_letter = word.split('')[2]
    new_word = ""
    if vowel(first_letter) || word.length == 1
      pig_word = "#{word}way"
    elsif vowel(first_letter) == false && vowel(second_letter) == false && vowel(third_letter) == false
      word = word[3..-1]
      pig_word = "#{word}#{first_letter}#{second_letter}#{third_letter}ay"
    elsif vowel(first_letter) == false && vowel(second_letter) == false
      word = word[2..-1]
      pig_word = "#{word}#{first_letter}#{second_letter}ay"
    else
      word = word[1..-1]
      pig_word = "#{word}#{first_letter}ay"
    end
    return pig_word
  end

end
