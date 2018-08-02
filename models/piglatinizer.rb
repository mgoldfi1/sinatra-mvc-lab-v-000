require 'pry'
class PigLatinizer
  attr_reader :words

  def piglatinize(string)
    binding.pry
    if !string[0].scan(/[aeiou]/).empty?
      string << "way"
    end
  end

end
