require 'sinatra'
require 'sinatra/json'

get '/' do
    @list  = File.open('cake.list', 'r')
    @counter = 1
    erb :list
end

get '/json' do
    json File.read('cake.list')
end
