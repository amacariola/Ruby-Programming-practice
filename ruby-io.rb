puts "Ruby I/O"

puts "the puts statement"
puts "display values stored in a variable"
puts "Basicaly, Ruby's standard output"

a = "Value one"
b = "Value two"

puts a
puts b

puts "The gets statement"
puts "Ruby's basic input"

puts "Enter a value here:\s"
input = gets
puts input

puts "the putc statement"
puts "returns/displays the first character"

put = "ruby"
putc put

puts "The print statement"
puts "Nothing different to puts except it returns values still positioned on the same line"

print "Hello Ruby\s"
print "Hello Python"

puts "File.new statement"
puts "creates a new file on the current working directory"

newFile = File.new("newfile.txt", "a+") # create a rw file named "newfile.txt" on the current working directory

puts "syswrite method"

if newFile
    newFile.syswrite("This is a test File")
else
    puts "File cannot be written"
end

#puts "sysread method"
#if newFile
#    content = newFile.sysread(20)
#    puts content
#else
#    puts "File no content"
#end

puts "each_byte method"

if newFile
    newFile.syswrite("ABCDEF")
    newFile.each_byte {|ch| putc ch; putc ?.}
else
    puts "Unable to open file"
end


puts "IO readlines method"

arr = IO.readlines("newfile.txt")
puts arr[0]
puts arr[1]


puts "IO foreach method"

IO.foreach("newfile.txt") {|block| puts block}

puts "Renaming files"
File.rename("newfile.txt","newerfile.txt")

puts "delete files"
File.delete("newerfile.txt")

puts "File change permissions"
newfile2 = File.new("test.txt","w")
newfile2.chmod( 0755 )

puts "File inquiries using Ruby"

puts "tests if file exists"
File.open("test.txt") if File::exist?("test.txt")


puts "checks if the file is really a file"
File.file?("test.txt")

puts "Check if the given name is a directory"
File::directory?("/usr/bin/")
File::directory?("test.txt")

puts "checks if the file is readable writable or executable"
File.readable?("test.txt")
File.writable?("test.txt")
File.executable("test.txt")

puts "check if the file size is zero"
File.zero?("test.txt")

puts "check the file size in bytes"
File.size?("test.txt")

puts "find out the type of file"
File.ftype("test.txt")

puts "check the time created, modified, last accessed"
File.ctime("test.txt")
File.mtime("test.txt")
File.atime("test.txt")

# Directories in Ruby

puts "Navigating thru Directories"
puts "Change your current working directory"
Dir.chdir("/")


puts "get a list of files and directories whithin a specific directory"
puts Dir.entries("/").join(' ')

puts Dir.foreach("/") do |entry|
    puts entry
end

puts "using Dir class array method"
Dir["/"]

puts "Create a new directory"
Dir.mkdir("/newdirectory", 755) # with permissions

puts "deleting a directory"
Dir.delete("/newdirectory")



# Special Section

require 'tmpdir'

    tempfilename = File.join(Dir.tmpdir, "tingtong")
    tempfile = File.new(tempfilename,"w")
    tempfile.puts "This is a Temp file"
    tempfile.close
    File.close(tempfilename)

# then require that file 

require 'tempfile'
    f = Tempfile.new('tingtong')
    f.puts "hello"
    puts f.path
    f.close

    