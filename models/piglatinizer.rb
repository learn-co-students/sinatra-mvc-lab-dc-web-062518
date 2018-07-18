require 'pry'

class PigLatinizer

attr_accessor :message, :piglatin, :piglatinize

  def initialize(message=nil)
    @message = message
  end



def piglatin(message)
  first_letter = message.split("")[0]
  second_letter = message.split("")[1]
  third_letter =  message.split("")[2]
  vowels = ["a","e","i","o","u","A","E","I","O","I"]
 if vowels.include?(first_letter)
        message + "way"
 else #vowels.include?(first_letter) == false
       if vowels.include?(third_letter) == false && vowels.include?(second_letter) == false && vowels.include?(first_letter) == false
         a = message.split(//).rotate(3)
         a.join("") + "ay"
       elsif vowels.include?(second_letter) == false && vowels.include?(first_letter) == false
           a = message.split(//).rotate(2)
           a.join("") + "ay"
       else
         a = message.split(//).rotate(1)
          a.join("") + "ay"
        end
 end
end


  def piglatinize(message)
      if message.include?(" ") == false
          piglatin(message)
      else
          new_array =[]
          arr = message.split(/\W+/)
          arr.map do |word|
            piglatin(word)
          new_array << piglatin(word)
          end
            new_array.join(" ")
      end
  end









end
