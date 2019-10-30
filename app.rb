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

get '/cat' do
  erb(:index)
end
