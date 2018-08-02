require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @sentence = PigLatinizer.new(params["string"])
  end

end
