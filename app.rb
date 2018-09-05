require_relative 'config/environment'
require 'securerandom'
class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, puts SecureRandom.hex(64)
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @item = params[:product]

    erb :checkout

  end
end
