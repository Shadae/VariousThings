class Platypus

  attr_accessor :furry, :eggs, :color, :attack


  def initialize(furry_yes_no, eggs_yes_no)
    @feels_furry = furry_yes_no
    @lays_eggs = eggs_yes_no
    @color= "furry, brown and waterproof"

  end

  def speak
    puts "Brrrgggrrrrrg Brrrgggrrrrrg"
  end

  def move
    puts "Waddle, Waddle"
  end

  def attack
   puts "Attack with venomous spur!"
  end
    
  def smile
    puts "Duck Face"
  end

end



