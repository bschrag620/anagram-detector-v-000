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
    @lettercount = word_to_dictionary(@word)
  end

  def self.match(list_of_words)
    list_of_words.collect do | word |
      if self.word_to_dictionary(word) == @lettercount
        word
      end
    end
  end
end
