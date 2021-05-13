#!/usr/bin/env ruby

x,y,z = 12,23,34
puts "Value of x is #{x}"
puts "Value of x + y is #{x + y}"
puts "the average of three variables is #{ (x + y + x)/3 }"

puts "General delimited strings"

puts %{Ruby is Fun}
puts %Q{Ruby is easy}
puts %q[Ruby is nice.]
puts %x!ls\s-la! # equivalent to backtick Linux command "ls"

puts "String built-in methods"
myStr = String.new("Test String")
lower = myStr.downcase
higher = myStr.capitalize
puts lower
puts higher