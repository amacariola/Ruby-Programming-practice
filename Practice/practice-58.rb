puts "Ruby Programming practice\n\n"

puts "1. Write a Ruby program to display version with patch number\n"
puts "Version:\s" + RUBY_VERSION
puts "Patch level:\s" + RUBY_PATCHLEVEL.to_s

puts "\n2.Display the current date and time\n"
time = Time.new
puts "Current Date and time #{time.strftime("%d/%m/%Y %H:%M")}"

puts "\n3. Write a Ruby program that create a new string which is n copies of a given string"
# output
# n
# nn
# nnn
# nnnn
def multiple_string(str,n)
    return str * n
end
print multiple_string("a",1), "\n"
print multiple_string("a",2), "\n"
print multiple_string("a",3), "\n"
print multiple_string("a",4), "\n"

puts "\n4. Accept a radius of a circle and compute the parameter and area"

def calculate(r)
    pi = Math::PI
    puts "Area is #{(pi * (r ** 2)).to_i}"
    puts "Perimeter is #{(2 * pi * r).to_i}"
end
calculate(6)

puts "\n5. Check if a string begins  with 'if'"
def start_if(str)
    puts str[0,2]
    return str[0,2] == "if" 
end

puts start_if("if only")
puts start_if("Not if")

puts "\n6. Accepts first and last name and print it in reverse"
def reverse_name
    begin
        puts "First name"
        fname = gets.chomp
        puts "Last name"
        lname = gets.chomp
        puts "Hello #{lname} #{fname}"
    rescue Interrupt
        puts "Keyboard Interrupt"
    rescue
    ensure
    end
end

reverse_name()

puts "\n7. Print the extensions of a file"
def file_extension
    begin
     puts "Enter file here"
     f = gets.chomp
     file = File.open(f)
     puts "\nFile name: #{File.basename file}"
     puts "Extension: #{File.extname file}"
     puts "Directory: #{File.dirname file}"
    rescue
      puts "File not found"
      retry
    rescue Interrupt
        puts "Keyboard interrupt,Continue executing"
    ensure       
    end
end

file_extension()

puts "\n8. check two integer values if either of them are in range 20..30"
def check_range(num1,num2)
    return((num1 >= 20 && num1 <= 30)||(num2 >= 20 && num2 <= 30))
end
puts check_range(10,20)

puts "\n9. check three numbers and return true if one or more of them are in 1..10 range"
def check_range_small(a,b,c)
    return (a >= 1 && a <= 10 || b >= 1 && b <= 10 || c >= 1 && c <= 10)
end

puts check_range_small(20,35,45)
puts check_range_small(1,2,46)

puts "\n10. Same with num 9, but not both "
def check_range_small2(a,b)
    return (((a >= 1 && a <= 10) && !(b >= 1 && b <= 10)) || (! (a >= 1 && a <= 10) && (b >= 1 && b <= 10)));
end

puts check_range_small2(1,12)
puts check_range_small2(10,15)

puts "\n11. Print this multiline 'string'"
puts(
<<-eos
*******************************************
**             RUBY IS GOOD              **
**                                       **
*******************************************
eos
)

puts "\n12. Add 'if' to a string and if it already has, unchanged"
def add_if(str)
    return str[0,2] == "if" ? str : "if\s" << str
end

puts add_if("if anything")
puts add_if("nothing")

puts "\n13. Return the first 3 strings of a provided string where string must not less than 3"
def print_three_string(str,n)
    return str.length < 3 ? str * n : str[0..2] * n
end
puts print_three_string("asdfgh",3)

puts "\n14. Compute the volume of the sphere"
def sphere_volume(radius)
    pi = Math::PI
    return (4/3) * pi * (radius ** 3)
end

puts sphere_volume(23)

puts "\n15. Print the input string with the 1st and last character reversed"
def reverse_character(str)
    return str[-1] << str[1..-1] << str[0]
end
puts "Enter string"
string = gets.chomp
puts reverse_character(string)

puts "\n16. determine if age is minor or not"
def minor_or_not(age)
    return age < 18 ? "Age is minor" : "Age is in legal age"
end

puts minor_or_not(19)
puts minor_or_not(13)

puts "\n17. compute difference and double it if n is greater than 33"
def difference(n)
    return n < 33 ? n - 33 : (n - 33) * 2
end
puts difference(43)
puts difference(23)

puts "\n18. Determine the highest value between two numbers"
def max_num(a,b)
    return a > b ? a : b
end
puts max_num(23,56)

puts "\n19. Check if one of the two integers are equal to 20 otherwise return their sum"
def check_value(a,b)
    return (a == 20 || b == 20) ? "Not allowed, One of the values is equal to 20" : a + b
end

puts check_value(20,34)
puts check_value(12,45)

puts "\n20. Return the highest among 3 numbers passed"
def highest(a,b,c)
    return [a,b,c].max
end

puts highest(3,6,7)