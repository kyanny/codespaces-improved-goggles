require 'sinatra'
require 'redis'
require_relative 'config/redis'

class MyApp < Sinatra::Base
  get '/' do
    'Hello, Sinatra with Redis!'
  end

  get '/set' do
    $redis.set(params[:key], params[:value])
    "Set key #{params[:key]} with value #{params[:value]}"
  end

  get '/get' do
    value = $redis.get(params[:key])
    "Value for key #{params[:key]}: #{value}"
  end
end

MyApp.run!