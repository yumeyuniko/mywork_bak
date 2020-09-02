require 'sinatra'
require 'sinatra/reloader'
require 'erb'

before do
	@player = "勇者"
end

get '/' do
	erb :form
end

post '/' do
	@message = "#{@player}は荒野を歩いていた"
	@article = params[:article]
	@name = params[:name]
	erb :form
end
