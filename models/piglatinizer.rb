require 'pry'
class PigLatinizer
  attr_reader :words

  def piglatinize(string)

    if !string[0].scan(/[aeiou]/).empty?
      string << "way"
    elsif !string[0].scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !string[1].scan(/[aeiou]/).empty?
      string << string[0]
      string[0] = ""
      string << "ay"
    end
    string
      binding.pry
  end

end
