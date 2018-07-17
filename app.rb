require_relative 'config/environment'
require_relative 'models/piglatinizer'
require 'pry'

class App < Sinatra::Base

  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    @phrase = params[:user_phrase]
    @piglatinized_phrase = PigLatinizer.new.piglatinize(@phrase)
    erb :piglatinize
  end

end
