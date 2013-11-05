#Dungeon Adventure Game

class Dungeon
  attr_accessor :player

  def initialize(player_name)
    puts "What is your name?"
    player_name = gets.chomp
    @player =Player.new(player_name)
    @rooms = []
  end

def add_room(reference, name, description, connections)
  @rooms << Room.new( reference, name, description, connections)
end

def start(location)
  @player.location = location
  show_current_description
end

def show_current_description
  puts find_room_in_dungeon(@player.location).full_description
end

def find_room_in_dungeon(reference)
  @rooms.detect {|room| room.reference == reference }
end

def find_in_room_direction(direction)
  room = find_room_in_dungeon(@player.location).connections[direction]
  if room == nil
    @player.location
  #elsif room == 
  else 
    room
  end
end

def go(direction)
  puts "You go " + direction.to_s
  @player.location = find_in_room_direction(direction)
  show_current_description
end

class Player
  attr_accessor :name, :location

  def initialize (player_name)
    @name = player_name

  end
end

class Room
  attr_accessor :reference, :name, :description, :connections

  def initialize(reference, name, description, connections)
      @reference = reference
      @name = name
      @description = description
      @connections = connections
    end

    def full_description
      @name + "\n\nYou are  " + @description
    end
  end
end



#Create the main dungeon object

my_dungeon = Dungeon.new(@player)

#Add rooms to the dungeon
my_dungeon.add_room(:largecave, "Large Cave", "in a large cavernous cave", { :west => :smallcave, :east => :blackhole, :north => :dragonlair})
my_dungeon.add_room(:blackhole, "BLack Hole", "sucked into a black hole! Game over! ", { :west => :largecave})
my_dungeon.add_room(:smallcave, "Small Cave", "in a small clausterphobic cave", { :east => :largecave})
my_dungeon.add_room(:dragonlair, "Dragon Lair", "suddenly aware you walked straight into a Dragon Cave!", { :south => :largecave})

#Start the dungeon by placing the player in the large cave
my_dungeon.start(:largecave)

#where do you want to go? 
puts "Where would you like to go: East, West or North?"
player_choice = gets.chomp

if player_choice == "e"
  my_dungeon.go(:east)
elsif player_choice == "w"
  my_dungeon.go(:west)
elsif player_choice == "n" 
  my_dungeon.go(:north)
  puts "Dragon says: \"What is your favorite hot drink: tea or coffee?\""
  answer = gets.chomp
  if answer == "coffee"
    puts "Muah haha. I hate Coffee. Now I will eat you!!!! GAME OVER"
  elsif answer == "tea"
    puts "Oh swell! I love Tea! Let me go heat up a kettle and I will set you free with some Tea and Jewels. \n\n\n\n\ You won!"
  else
    puts "GAME OVER. Dragon was unentertained and ate you!"
  end
else 
  puts "You can't go there!"
end



      