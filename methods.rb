#!/usr/bin/ruby

puts "Ruby methods"
puts "how we use methods in Ruby"

def test(a = "Ruby", b = "Python")
    puts "This is #{a}"
    puts "This is #{b}"
end

puts "Call method test"
test "C++","Javascript" # pass the variables
test # call the methods without args passed

puts "return values from methods"

def values_test 
    x = 12
    y = 23
    z = 34
end

puts "return the method values"
puts "It returns the last declared variable"

puts values_test

puts "return statement"
puts "used to return one or more values from a method"

def ret_test 
    x = 12
    y = 23
    z = 34
return x,y,z # returns the values inside the Ruby Method
end

puts ret_test

puts "Variable number of parameters in a Ruby method"

def sample_method(*test)
    puts "the number of parameters passed is returned"
    for i in 0...test.length # test.length is the length of the passed parameters
        puts "Heres the parameters #{test[i]}"
    end
end

sample_method "Haruna","F","75"
sample_method "Kirishima", "F", "75"
