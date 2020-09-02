# メニューの項目を追加する
require 'sinatra'
require 'sinatra/reloader'
require 'erb'

# メニュー, /, メニューを表示
get '/' do
   @player = '勇者'
   erb :index
end

# あるく, /walk, 荒野を歩いていた。
get '/walk' do
    @player = '勇者'
    @message = "#{@player}は、荒野を歩いていた。"
    erb :action
end

# たたかう, /attack, モンスターと戦った。
get '/attack' do
    @player = '勇者'
    @message = "#{@player}は、モンスターと戦った。"
    erb :action
end


