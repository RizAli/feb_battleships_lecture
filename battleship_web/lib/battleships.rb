require 'sinatra/base'
require_relative './game'
require_relative './player'
require_relative './board'
require_relative './cell'

class BattleShips < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }

  game = Game.new
  board = Board.new({size:2, content:Cell})
  enable :sessions

  get '/homepage' do
    @name = %w(A B C).sample
    erb :index
  end

  get '/new_game' do
      erb :new_game
  end

  post '/new_game' do
    if params[:name].empty?
      erb :new_game
    else
      @player = Player.new(params[:name])
      game.add_player @player
      session[:me] = @player
      p @player
      erb :start_game
    end
  end

  get './start_game' do
      @player = session[:me]
      # erb :new_game
      # @board = Board.new({size: 10, content: Cell})
      # erb :start_game


  end





  # start the server if ruby file executed directly
  run! if app_file == $0
end
