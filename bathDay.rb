# -*- coding: utf-8 -*-
# 3F_Jakarta bot
require 'rubygems'
require 'twitter'
require 'date'

@client = Twitter::REST::Client.new do |config|
  config.consumer_key = "J3zhnBl9X8ZRUZDOB1TvlZDrO"
  config.consumer_secret = "bx1R2ViWcPoR7T884QhRgLs7mzogCoPmG93GcZzkEgRMZxqzMn"
  config.access_token = "3196344709-ABFEKiDA1kW61dzFd1jB8A5HxrwKR8irgOs0P5Q"
  config.access_token_secret = "0H9KvsoBFfLtCSkeQKXN9ckfIBWhTFgKULwPxPIZ764cl"
end

def isbathday (someday ,today)
  dayDiff = (someday - today) / (24*60*60)
  if(dayDiff.to_i%2 == 0)
    return true
   else
    return false
   end
end

wdays = ["日", "月", "火", "水", "木", "金", "土"]

day = Time.now #=> Sun Dec 31 00:00:00 JST 2000
#2015年10月20日お風呂が張られていた日
someday = Time.local(2015,10,20)
p "hayashi"
prng = Random.new(12345)
if(isbathday(someday,day))
  case prng.rand(0...10)
  when 0 then
    @client.update("今日はお風呂張ってそう　\n #{day} ")
  when 2 then
    @client.update("お風呂の水張ってる日　\n #{day} ")
  when 3 then
    @client.update("シャワーじゃなくてお風呂はいれそう>w<　\n #{day} ")
  when 4 then
    @client.update("今日お風呂に浸かれるのは春日宿舎だけ！！　\n #{day} ")
  when 5 then
    @client.update("お風呂　DAY　\n #{day} ")
  else
    @client.update("今日はお風呂の日ですよ〜〜　\n #{day} ")
  end 
else
  case prng.rand(0...10)
  when 0 then
    @client.update("お風呂に湯槽張ってません　\n #{day} ")
  when 2 then
    @client.update("シャワーしか浴びれない日　\n #{day} ")
  when 3 then
    @client.update("お風呂の霊圧が・・・消えた・・・？　\n #{day} ")
  when 4 then
    @client.update("お風呂入れません、明日まで待とう　\n #{day} ")
  when 5 then
    @client.update("湯槽　無し　DAY　\n #{day} ")
  else
    @client.update("湯槽が家出してます　\n #{day} ")
  end
end
p "今日は#{wdays[day.wday]}曜日です" #=> "今日は日曜日です"
