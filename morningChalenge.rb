# -*- coding: utf-8 -*-
# 3F_Jakarta bot
require 'rubygems'
require 'twitter'

@client = Twitter::REST::Client.new do |config|
  config.consumer_key = "J3zhnBl9X8ZRUZDOB1TvlZDrO"
  config.consumer_secret = "bx1R2ViWcPoR7T884QhRgLs7mzogCoPmG93GcZzkEgRMZxqzMn"
  config.access_token = "3196344709-ABFEKiDA1kW61dzFd1jB8A5HxrwKR8irgOs0P5Q"
  config.access_token_secret = "0H9KvsoBFfLtCSkeQKXN9ckfIBWhTFgKULwPxPIZ764cl"
end

wdays = ["日", "月", "火", "水", "木", "金", "土"]

day = Time.now #=> Sun Dec 31 00:00:00 JST 2000
case day.wday
	when 2 then
		#火曜日
		@client.update("Let 朝食チャレンジ　in#{wdays[day.wday]}曜日　\n #{day} ")
	when 3 then
		@client.update("Let 朝食チャレンジ　in#{wdays[day.wday]}曜日  \n #{day}")
	when 4 then
		@client.update("Let 朝食チャレンジ　in#{wdays[day.wday]}曜日  \n #{day}")
	when 5 then
		@client.update("Let 朝食チャレンジ　in#{wdays[day.wday]}曜日  \n #{day}")
	end
p "今日は#{wdays[day.wday]}曜日です" #=> "今日は日曜日です"

