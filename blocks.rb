puts "Blocks in Ruby"
puts "Yield statement is used to invoke a block"

def test 
    puts "This is a method"
    yield
    puts "No its a method"
    yield
end

test { puts "Yes, this is a block"}

puts "Yield can be also passed by arguments or parameters"

def test
    puts "Im at method 1"
    yield 2
    puts "No im in method 1"
    yield 2
end

test{|i| puts "No youre in block #{i}"}