# require_relative '../../words'

class Word < ActiveRecord::Base

  # dictionary = File.open("words.txt")

  def self.anagram(word)
    array = []
    Word.all.each do |dword|
      if dword.word.to_s.split("").sort == word.to_s.split("").sort
        array << dword.word
      end
    end
    return array
  end
end
