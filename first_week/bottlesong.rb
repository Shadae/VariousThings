(1..99).to_a.reverse.each. do |number|
  puts number.to_s +" bottles of beer on the wall.. "
  puts number.to_s +" bottles of beer on the wall.. "
  puts " Take one down, pass it around...."
  number_left = number - 1

  puts number_left.to_s + "bottles of beer on the wall!"
  puts "-----------"
end