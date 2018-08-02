require 'pry'
class PigLatinizer
  attr_reader :words

  def piglatinize(string)
    binding.pry
    if string.start_with?(/[aeiou]/)
      string << "way"
    end
  end

end
