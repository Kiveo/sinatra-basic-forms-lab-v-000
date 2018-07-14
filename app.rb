require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display_puppy' do
    @pup = Puppy.new
    @pup.name = params[:name]
    @pup.age = params[:age]
    @pup.breed = params[:breed]
    erb :display_puppy
  end

end
