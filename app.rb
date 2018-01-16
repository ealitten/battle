require 'sinatra/base'


class Battle < Sinatra::Base

  get '/' do
    "Testing infrastructure working!"
  end

  # start server if ruby file run directly
  run! if app_file == $0

end

