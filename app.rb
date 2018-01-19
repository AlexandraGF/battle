require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/names' do
    $game = Game.new((Player.new(params[:player_1])), (Player.new(params[:player_2])))
    @game = $game
    redirect '/play'
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    erb :attack
  end

  get '/attack2' do
    @game = $game
    @game.attack(@game.player1)
    erb :attack2
  end

  get '/redirectplay' do
    @game = $game
    if @game.player1.points < 30 || @game.player2.points  < 30
    erb :game_lost
  else
    redirect '/play'
  end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
