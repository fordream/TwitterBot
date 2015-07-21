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

@client.update("あああああ")
