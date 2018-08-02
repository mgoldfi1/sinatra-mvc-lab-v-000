require 'pry'
class PigLatinizer
  attr_reader :words

  def piglatinize(string)
  sentence = string.split(" ").map do |word|
    if !word[0].scan(/[aeiouAEIOU]/).empty?
      word << "way"
    elsif !word[0].scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !word[1].scan(/[aeiou]/).empty?
      word << word[0]
      word[0] = ""
      word << "ay"
    elsif !word[0].scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !word[1].scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !word[2].scan(/[bcdfghjklmnpqrstvwxyz]/).empty?
      word << word[0]
      word << word[1]
      word << word[2]
      word << "ay"
      word[0] = ""
      word[0] = ""
      word[0] = ""
    elsif !word[0].scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !word[1].scan(/[bcdfghjklmnpqrstvwxyz]/).empty?
      word << word[0]
      word << word[1]
      word << "ay"
      word[0] = ""
      word[0] = ""
    end
  end
    sentence.join(" ")

  end

end
