require 'bundler/setup'
require 'sinatra'
require 'sinatra/base'
# require 'sinatra/reloader'

class RPS_web < Sinatra::Base
  
#   configure :development do
#     register Sinatra::Reloader  
#   end

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_1_name]

    redirect '/play'
  end

  get '/play' do
    @player_name = params[:player_1_name]
    erb :play
  end
  
end
