i = 0
numbers = []

puts "What number would you like to explore?"
number_var = gets.chomp.to_i

puts "How many increments would you like to explore by?"
inc_var = gets.chomp.to_i


while i < number_var
  puts "At the top i is #{i}"
  numbers.push(i)

  i = i + inc_var
  puts "Numbers now: #{numbers}"
  puts "At the bottom i is #{i}"
  puts "------------------------"
end


puts "The numbers: "

for num in numbers
  puts num
end