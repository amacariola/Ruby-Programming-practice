#!/usr/bin/ruby

time1 = Time.new
puts "Current Time: " + time1.inspect

timenow = Time.now
puts "Time now: " + timenow.inspect

puts "Current TIme: " + time1.inspect
puts "Year:" , time1.year
puts "Month:", time1.month
puts "Day:", time1.day
puts "WDay:", time1.wday
puts "YDay:", time1.yday
puts "Hour:", time1.hour
puts "Minutes:", time1.min
puts "Seconds:", time1.sec
puts "USec:", time1.usec
puts "Time Zone:", time1.zone


puts "Time formats\n\n"
puts Time.local(2020,12,12)
puts Time.local(2020,7,8,9,10)


puts "time format to UTC"
time = Time.new
values = time.to_a
puts Time.utc(*values)


puts "Time YY-MM-DD"
yymmdd = Time.new
puts yymmdd.to_s
puts yymmdd.ctime
puts yymmdd.localtime
puts yymmdd.strftime("%Y-%m-%d %H:%M:%S")


puts "Ruby time arithmetic"
now = Time.now
puts "Time now: #{now}"

past = now - 100
puts "Time Past: #{past}"

future = now + 100
puts "Time Future: #{future}"

diff = future - past
puts "Time Difference: #{diff} seconds"