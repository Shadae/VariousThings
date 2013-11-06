#OrangeTree

class OrangeTree

  attr_accessor :height, :age, :oranges
  
  def initialize
    @height =  24
    @age = 3
    @oranges = 0
  end

  def height_of_tree
    @height = @height + 5 
    put "The tree is #{height} tall"
  end

  def one_year_passes
    @age = @age + 1
    die
    @oranges = @oranges + @age
      puts "There are #{@oranges} on the tree this year"
    @height = @height + 10
    die
  end

  def die
    if @age >= 20
      puts "Your tree has died, Goodbye"
      @oranges = 0
    exit
  end

  def count_oranges
    puts "You have #{@oranges} oranges"
  end

  def pick_an_orange
    @oranges = @oranges - 1
    puts "That orange was delicious"
      if @oranges == 0
      puts "There are no more oranges"
    end
  end
end
end

puts "Hi, I'm a #{age} year old Orange Tree, name me!"
name = gets.chomp




