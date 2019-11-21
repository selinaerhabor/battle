require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:p1_name])
    $player_2 = Player.new(params[:p2_name])
    redirect '/play'
  end

  get '/play' do
    @p1_name = $player_1
    @p2_name = $player_2
    erb :play
  end

  get '/attack' do
    @p1_name = $player_1
    @p2_name = $player_2
    @p1_name.attack(@p2_name)
    erb :attack
  end
  run! if app_file == $0
end
