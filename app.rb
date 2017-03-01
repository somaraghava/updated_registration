require 'sinatra'
require 'sinatra/activerecord'
require './config/environment'
require  './models/models'



get '/' do
  erb :index1
end

post '/register' do

  @model1=Models.new(fname: params[:fname], lname: params[:lname], email: params[:email],address: params[:address])

  if @model1.save

    redirect '/register'
  else
    redirect '/'

  end
  end

  get '/register' do

    erb :picks

  end

post '/submit' do

  @post1=Posts.new(date: params[:date], time: params[:time], weight: params[:weight])

  if @post1.save

    redirect '/submit'

  else

    redirect '/register'

  end
end
get '/submit' do

  erb :success
end