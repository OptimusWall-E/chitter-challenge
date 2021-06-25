require 'sinatra/base'
require 'sinatra/reloader'

class Chitter < Sinatra::base
  configure :development do
    register Sinatra::Reloader
  end
  
  get '/' do
    'Welcome to Chitter'
  end

  run! if app_file == $0

end
