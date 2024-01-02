require_relative 'colors.rb'

def instructions
  puts "Welcome to play Mastermind \n".red

  puts "This is a 1-player game against the computer"

  puts "You can choose to be code maker or code breaker"

  puts "There are six different number/color combinations"


  puts "The code maker will choose four to create a 'master code'"

  puts "There can be more than one of the same number/color"

  puts "In Order to win the code breaker needs to guess the 'master code' in 12 or less turns"

  puts "Would you like to be the code MAKER or code BREAKER ? \n\n\n"

  puts "Pres '1' to be the code MAKER".blue
  puts "Press '2' to be the code BREAKER".blue

end


