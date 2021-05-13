#!/usr/bin/ruby

puts "IF ELSE Conditions"
puts "executes code if statement is true"
x = 1
if x > 2
    puts "X is greater than 2"
elsif x <= 2 and x!= 0
    puts "X is 1"
else 
    puts "we dont know"
end

puts "IF modifier"
$debug = 1 # debug is a global variable
puts "debug\n" if $debug #print debug if "debug" is a global variable

puts "Unless conditionals"
puts "It executes code if the statement is false"

x = 1
unless x >= 2
    puts "X is less than 2"
else
    puts "X is greater than 2"
end

puts "unless modifier"

$var = 1
puts "var1\n" if $var
puts "var2\n" unless $var

$var = false
puts "var3\n" unless $var

puts "case conditions"
puts "compares the expression specified by case using === operator"

$age = 45
case $age
when 0 .. 2
    puts "Baby"
when 2 .. 7
    puts "Toddler"
when 8 .. 13
    puts "Child"
when 14 .. 19
    puts "teen"
when 20..30
    puts " Young Adult"
when 31..50
    puts "Adult"
end

puts "while statements"
puts "executes code while the condition is true"

$num = 1
$limit = 10

while $num < $limit do  #condition
    # the while loop code
    puts("Inside the loop num = #$num")
    $num += 1
end

puts "while modifier"

$num = 1
$limit = 10

begin
    # the while loop code
    puts("Inside the loop num = #$num")
    $num += 1
end while $num < $limit


puts "until conditions"
puts "executes code while condition is false"

$num = 1
$limit = 10

until $num > $limit do  #condition
    # the while loop code
    puts("Inside the loop num = #$num")
    $num += 1
end

puts "until modifier"

$num = 1
$limit = 10

begin
    # the while loop code
    puts("Inside the loop num = #$num")
    $num += 1
end until $num > $limit


puts "for statement"
puts "executes code once for each element in expression"

for i in 0..10
    puts "Count by #{i}"
end

puts "each do statement"
puts "same with for statement"

(0..10).each do |i|
    puts "Count by #{i}"
end

puts "break statement"
puts "terminates the inner loop"

for i in 0..5 do
    if i > 2 then
        break # if i is less than 2, execution halts
    end
    puts "Value is #{i}"
end

puts "next statements"
puts "Jumps to the next iteration of most internal part of the loop"

for i in 0..5 do
    if i < 2 then
        next # until i is greater than 2, code resumes
    end
    puts "Value is #{i}"
end

puts "redo statements"
puts "restarts the most internal part of the loop"

for i in 0..5
    if i < 2 then
     puts "Value is #{i}"
     redo
    end
end 

puts "retry statement"
puts "re executes the code if some condition is faced"

# for i in 0..5 do
#    retry if i > 2
# puts "Value is #{i}"
# end