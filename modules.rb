puts "Modules and mixins"

puts "Calling/requiring a module"

$LOAD_PATH << '.'

require 'trig.rb'
require 'moral'

y = Trig.sin(Trig::PI/4)
behavior = Moral.sin(Moral::VERY_BAD)

puts y
puts behavior