#!/usr/bin/ruby

puts "Hashes in Ruby"
puts "if the key has a value that doesnt exists, it defaults to the default value"

months = Hash.new("month")
puts months[0]
puts months[13]

puts "returns the key values"

days = Hash[ "Monday" => 10, "Saturday" => 100]
puts days["Monday"]
puts days["Saturday"]

puts "Hash built-in methods"

$, = ", "
weekdays = Hash.new( weekdays )
weekdays = {"1" => "Monday","2" => "Tuesday"}

puts "Hash default value is: #{weekdays.default}"
puts "Hash keys: #{weekdays.keys}"
puts "Hash values: #{weekdays.values}"
puts "Hash: #{weekdays}"
puts "Hash key 1 is : #{weekdays["1"]}"

weekdays["1"] = "Getsuyobi"
puts "New value for hash key 1: #{weekdays["1"]}"

weekdays.clear
puts "Hash cleared #{weekdays}"

