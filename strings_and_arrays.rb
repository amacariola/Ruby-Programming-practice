#!/usr/bin/ruby

puts "String literals in Ruby"

puts 'escape using "\\"'
puts 'thats\'s Right mate'

puts "Using {#expression} in a string"
puts "Product is: #{1*2*3}"

puts "Arrays in Ruby"
array1 = ["Ace", 10 , 20, "This", "Is A", "Test"]

array1.each do |array|
    puts array
end

puts "Array used in a loop statement"

scores = [10,20,37,56,66,70,80,86,90,98]

scores.each do |score|
    result = case score
    when 0..40 then "Fail"
    when 41..60 then "Fair"
    when 61..70 then "Average"
    when 71..89 then "Meritorious"
    when 90..100 then "Excellent"
    else "Invalid Score"
    end
    
    puts "Score: #{score}, Result: #{result}"
end

puts "Creating a new array using Array.new\n\n"
names = Array.new(3, "Haruna")
nums = Array.new(3){|e| e = e * 2}
list = Array.[](1,2,3,4,5,6)
digits = Array(0..5)

puts "#{names}"
puts "#{nums}"
puts "#{list}"
puts "#{digits}"

puts "Array built-in methods\n\n"

puts "at method"
digit = Array(0..9)
puts digit.at(6)


puts "Ruby hashes"
hash = colors = { "black" => 0xfff, "green" => 0x0f0, "blue" => 0x00f}
hash.each do |key,value|
    print key, "\sis\s", value, "\n"
end


puts "Ruby ranges"
(1..10).each do |n|
    print n, ' '
end

puts "\nRanges as sequences"
$, = ", "
range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a

puts "#{range1}"
puts "#{range2}"

puts "using some range built-in methods"
digits = 0..9

puts digits.include?(5)
puts "Min value is #{digits.min}"
puts "Max value is #{digits.max}"
puts "Rejected values are #{digits.reject{|i| i < 5} }"
puts "Range passed in a loop"
digits.each do |digit|
    puts "In Loop: #{digit}"
end


puts "Ranges as conditions"
puts "Ranges used in a case statement"

score = 98
result = case score
when 0..40 then "Fail"
when 41..60 then "Fair"
when 61..70 then "Average"
when 71..89 then "Meritorious"
when 90..100 then "Excellent"
else "Invalid Score"
end

puts result

