#!/usr/bin/ruby

puts "Ruby Exceptions"

begin
    file = open("none.txt")
    if file 
        puts "Successfully opened file"
    end
rescue
    file = STDIN
end

print "Error:\s", file, "==", STDIN, "\n"


#puts "retry statement"
#puts "capture an exception and use retry to execute the begin block of the execution flow"

#begin
#    file = open("none.txt")
#    if file
#        puts "Successfully opened file"
#    end
#rescue  # catches an exception
#    fname = "trig.rb"
#    retry   # retries executing the BEGIN block of the execution flow
#    i = i += 1
#    puts "Retrying #{i}"
#end 


puts "raise statement"
puts "raises an exception"

begin
    puts "This is the execution flow before raise"
    raise "Exception caught"
    puts "This is the execution flow after the raise"
rescue
    puts "Execution rescued"
end
puts "execution state after the begin block"


begin 
    raise "A test Exception"
rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
end

puts "ensure statement"
puts "ensures some processing is done at the end of the code regardless of exception being raised"

begin 
    raise "A test Exception"
rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
ensure
    puts "making sure execution continues"
end

puts "else statement"
puts "execution flow goes after te rescue clauses and before any ensures"

begin 
    # raise "A test Exception"
    puts "No exceptions"
rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
else
    puts "Congrats no errors happened"
ensure
    puts "execution continues"
end
