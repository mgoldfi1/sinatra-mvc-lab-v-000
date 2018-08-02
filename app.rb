require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @sentence = PigLatinizer.new(params["string"])
    binding.pry
    erb :user_input
  end

end
