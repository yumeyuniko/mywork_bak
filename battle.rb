# フォームで、RPGの戦闘シーンを作る
require 'sinatra'
require 'sinatra/reloader'
require 'erb'

before do
    @players = ["勇者", "戦士", "魔法使い", "忍者"]
end

get '/' do
    @message = "新たなモンスターが現れた！"
    erb :battle
end

post '/' do
    @name = params[:name]
    @message = "#{@name}は、モンスターと戦った！"
    erb :battle
end