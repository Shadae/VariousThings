#calc2

class Calculator

  attr_accessor :first_num, :second_num

  def initialize
  end

  def add()
    first_num + second_num
  end

  def sub()
    first_num - second_num
  end

  def div()
    first_num / second_num
  end

  def multi()
    first_num * second_num
  end

  def exp()
    first_num ** second_num
  end

  def sqroot()
    Math.sqrt(first_num)
  end

end

calc = Calculator.new 

while true
  puts "What is the first number?"
  calc.first_num = gets.chomp.to_i
  puts "What is the second number?"
  calc.second_num = gets.chomp.to_i
  puts "What operation would you like to perform?"
  operation = gets.chomp

  if calc.respond_to? operation
    answer = calc.send operation
    puts "The answer is #{answer}"
  else
    puts "Sorry, I don't understand #{operation}"
  end

end









