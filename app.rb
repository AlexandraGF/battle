require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :play
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    Game.new.attack($player_2)

    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
