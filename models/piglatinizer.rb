require 'pry'
class PigLatinizer
  attr_reader :words

  def piglatinize(string)
    if string.start_with?(/[aeiou]/)
end
