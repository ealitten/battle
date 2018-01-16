require 'sinatra/base'
require_relative './lib/player'

require 'pry'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, '5ee6a1127fa9ae1dd477dec9a93fcae15d8713e59e1e67ae5ac1e643f6bdd9132229287405c1bb65996a5e6c850a3111997b3110d5d3326f1abb0bb9414ed8d9'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session['player_1'] = Player.new(params[:player_1_name])
    session['player_2'] = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1  = session['player_1']
    @player_2  = session['player_2']
    erb(:play)
  end

  get '/attack' do
    @player_1  = session['player_1']
    @player_2  = session['player_2']
    erb(:attack)
  end

  # start server if ruby file run directly
  run! if app_file == $0

end
