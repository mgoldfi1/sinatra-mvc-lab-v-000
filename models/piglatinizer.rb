require 'pry'
class PigLatinizer
  attr_reader :words

  def piglatinize(string)

    if !string[0].scan(/[aeiouAEIOU]/).empty?
      string << "way"
    elsif !string[0].scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !string[1].scan(/[aeiou]/).empty?
      string << string[0]
      string[0] = ""
      string << "ay"
    elsif !string[0].scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !string[1].scan(/[bcdfghjklmnpqrstvwxyz]/).empty? 
      string << string[0]
      string << string[1]
      string << "ay"
      string[0] = ""
      string[1] = ""
    end
    string
  end

end
