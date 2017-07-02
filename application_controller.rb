require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end


post '/results' do
   name=params[:name]
   @answer=klossy(name.length)
   erb :results
  end



end