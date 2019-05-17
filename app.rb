require 'sinatra'
require 'sinatra/json'

get '/' do
    @kind_of_cake  = File.open('cake.list', 'r')
    @counter = 1
    erb :list
end

get '/json' do
    json File.read('cake.list')
end
