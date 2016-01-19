load("./1.0_tools.rb")

def runner
border_big
puts "\t" "\t" "Welcome to the Mordheim Game mode 'Madness'
                            Version 1.0"
border_big

puts "
Outside of the prompts to follow, this program 
responds to the following commands:

Rules - Overview of the rules of this game mode.
Rolls - Opens up the simulated dice rolling utility.
Help  - Returns to this prompt.
Exit  - Closes the program.
Clear - Clears the screen"

puts "
Looks like you're in Mordheim again. 
So? What did you encounter?"
puts "
Glowing house? - enter 'house'
-or-
Wyrdstone?     - enter 'stone'"

while input = gets.chomp
  case input
  when "house"
    glowing_house

  when "stone"
    wyrd_roll

  when "Rules", "rules"
    puts "coming soon"

  when "Rolls", "rolls"
    puts "coming soon"

  when "Help", "help"
    puts "coming soon"

  when "Clear", "clear"
    system "clear"

  when "Exit", "exit"
    break
    end
  end
  puts "See you next time for some more Mordheim Madness"
end
