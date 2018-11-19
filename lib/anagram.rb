# Your code goes here!
class Anagram
  attr_accessor :word

  def self.word_to_dictionary(word)
    dictionary = {}
    for letter in word.split('')
      if dictionary.include?(letter)
        dictionary[letter] += 1
      else
        dictionary[letter] = 1
      end
    end
    dictionaty
  end

  def initialize(word)
    @word = word
  end

  def self.match(list_of_words)
    self_dictionary = self.word_to_dictionary(@word)
    list_of_words.collect do | word |
      if self.word_to_dictionary(word) == self_dictionary
        word
      end
    end
  end
end
