require 'sinatra'
require 'shotgun'

get '/' do
  "Hello World"
end

get '/info' do
  "Created using shotgun and sinatra"
end

get '/secret' do
  "Secret message"
end

get '/secret/extra' do
  "Now for the real secret"
end

get '/random_cat' do
  @name = ['Amigo', 'Oscar', 'Viking'].sample
  erb(:index)
end

get '/enter_name' do
  erb(:form)
end

post '/named_cat' do
  # p params
  @name = params[:name]
  erb(:index)
end
