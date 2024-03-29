# -*- coding: utf-8 -*-
require 'clockwork'
include Clockwork
module Clockwork
  handler do |job|
    case job
#    when 'frequent.job'
    #	Dir.chdir("."){puts `ruby TestTl.rb`}
    # 10 秒毎の処理
    
    when 'midnight.job'
    # ０時の処理
    Dir.chdir("."){puts `ruby morningChalenge.rb`}

    when 'morning.job'
    #  朝８時の処理
    Dir.chdir("."){puts `ruby morningChalenge.rb`}
    
    when 'noon.job'
    # 昼12時の処理
    Dir.chdir("."){puts `ruby bathDay.rb`}

    when 'afternoon.job'
    Dir.chdir("."){puts `ruby bathDay.rb`}

    #午後3時の処理
    when 'evening.job'
    # 午後５時の処理
    Dir.chdir("."){puts `ruby bathDay.rb`}

    when 'dubber.job'
    #午後7時の処理
    Dir.chdir("."){puts `ruby bathDay.rb`}

    end
  end
 # every(10.seconds, 'frequent.job')
  every(1.day, 'midnight.job', :at => '00:00')
  every(1.day, 'morning.job', :at => '08:00')
  every(1.day, 'noon.job', :at => '12:00')
  every(1.day, 'afternoon.job', :at => '15:00') 
  every(1.day, 'evening.job', :at => '17:00')
  every(1.day, 'dinner.job', :at => '19:00')
end
