# Practice in Ruby
# Array manipulation

puts "1. Create an array of names"
names = Array.[]('Haruna','Kongou','Hiei','Kirishima')
puts names

puts "\n2. Use Array in a loop"

names.each do |name|
    puts "#{name} Kai"
end

puts "\n2.1 Array data access"
puts names[0]
puts names[1]

puts "\n2.2 Array length"
puts "Array length is #{names.length}"

puts "\n2.3 Array manipulations"
puts "Names[0..2] #{names[0..2]}"
puts "Names[1..2] #{names[1..2]}"

puts "\n2.4 Array Manipulation"
puts names[0..names.length]

puts "\n2.5 Array manipulation"

count = 0
puts "Counts starts with #{count}"
names.each do |name|
    puts "#{name} Count by #{count += 1}"
end

puts "\n3. Array with case"

days = [1,2,3,4,5,6,7,8]
days.each do |day|
    weekday = case day
    when 1 then "Monday"
    when 2 then "Tuesday"
    when 3 then "Wednesday"
    when 4 then "Thursday"
    when 5 then "Friday"
    when 6 then "Saturday"
    when 7 then "Sunday"
    else "Not part of the week"
    end
    puts "#{weekday} #{day}"
end

puts "\nprint a range and use it in a loop"
puts ('aa'...'ff')

puts "Check if an object is in the array"
digits = [1,2,4,3,4,5]
puts "Is '3' is on the array? #{digits.at(3)}"