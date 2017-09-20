require 'sinatra/base'
require_relative './models/link'

class BookmarkManager < Sinatra::Base

  enable :sessions

  set :session_secret, 'super secret'

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

run! if app_file == $0
end
