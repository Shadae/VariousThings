require 'colorize'

(1..99).to_a.reverse.each do |number|
puts number.to_s + " bottles of beer on the wall.. ".light_cyan
puts number.to_s + " bottles of beer .. ".light_blue
puts " Take one down, pass it around....".white.on_light_blue
number_left = number - 1

puts number_left.to_s + " bottles of beer on the wall!".magenta
puts "-----------"
end