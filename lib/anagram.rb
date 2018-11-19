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
    match_list = []
    list_of_words.each do | word |
      if self.word_to_dictionary(word) == self_dictionary
        match_list << word
      end
    end
    match_list
  end
end
