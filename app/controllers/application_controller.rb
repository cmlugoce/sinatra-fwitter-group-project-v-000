
require './config/environment'

class ApplicationController < Sinatra::Base

  configure do

    set :public_folder, 'public'
    set :views, "app/views"
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

<<<<<<< HEAD
  helpers do
    def logged_in?
      !!current_user
    end

    def current_user
  @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
   end
  end
=======

  get '/' do 
    erb :index 
  end 
  
  def logged_in?
    !!session[:user_id]
  end 
  
  def current_user 
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
>>>>>>> a9d9ee18c034bd09627d977e5ca5125f0563a5cf
end
