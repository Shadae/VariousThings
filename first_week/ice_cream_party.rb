ice_cream_to_name = {}


add_new_user = 'y'

while add_new_user == "y"
  puts "What is your name\n\n"
    name = gets.chomp

  puts "\n\nAwesome #{name}, What ice cream do you like?\n\n"
    ice_cream = gets.chomp

    # #if ice_cream_to_name.values?(ice_cream)
    #   hash.merge!(ice_cream_to_name)
    # end

  #else
      ice_cream_to_name[name]= ice_cream
      puts "\n\nWould you like to add a new user (y/n)\n\n"
      add_new_user = gets.chomp
    #end
end

puts "\n\n\nWhat would you like to do now? \n "
#a: Display attendees and their favorite ice cream? \n 
puts "A: Display a sorted list of flavors?\n\n"  
  action = gets.chomp.downcase
  puts "You choose #{action}"

#case action
#ice_cream_to_name.sort 
#"#{name}: #{ice_cream}"


#  if action == "a"
#    print ice_cream_to_name.sort 
    
#  end

  if action == "a"
    puts ice_cream_to_name.values.sort.join ", "

  end
