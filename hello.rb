# ルーティングを理解する
require 'sinatra'
require 'sinatra/reloader'
require 'erb'

get '/' do
    @name = 'Sinatra'
    @now = Time.now
    @player = ["勇者", "戦士", "魔法使い"]
    @enemies = ["スライム","モンスター","ドラゴン"]
    erb :index
end

__END__
@@index
<!DOCTYPE html>
<html lang="ja">
    <head>
        <mata charset="utf-8">
        <title>Sinatra - paiza</title>
        <style>body {padding: 30px;}</style>
    </head>
    <body>
        <h1>Hello erb!</h1>
        <p>Hello <%= @name %></p>
        <p><%= @now %></p>
        <h1>戦闘シーン</h1>
        <% @player.each do |person| %>
            <p><%= "#{person}は、モンスターと戦った"%></p>
            <% end %>
        <% @enemies.each do |enemy| %>
            <p><%= "勇者は#{enemy}と戦った。" %></p>
            <% end %>
       </body>
</html>
