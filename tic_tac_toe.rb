t = [1, 2, 3, 4, 5, 6, 7, 8, 9]
current_game_boxes = ['', '', '', '', '', '', '', '', '']

tic_tac = [t[0], t[1], t[2], t[3], t[4], t[5], t[6], t[7], t[8]]


puts "#{tic_tac[0]}  | #{tic_tac[1]} |  #{tic_tac[2]}\n ---+---+--- \n #{tic_tac[3]}  | #{tic_tac[4]} |  #{tic_tac[5]} \n ---+---+--- \n #{tic_tac[6]}  | #{tic_tac[7]} |  #{tic_tac[8]}"

puts "Current Tic Tac Toe"


def display_current_grid(current_game_boxes)
  puts "#{current_game_boxes[0]}  | #{current_game_boxes[1]} |  #{current_game_boxes[2]}\n ---+---+--- \n #{current_game_boxes[3]}  | #{current_game_boxes[4]} |  #{current_game_boxes[5]} \n ---+---+--- \n #{current_game_boxes[6]}  | #{current_game_boxes[7]} |  #{current_game_boxes[8]}"
end

def get_system_input(current_game_boxes)
  available_spaces = current_game_boxes.map.with_index {|box, idx| idx+1 if box.empty? } - [nil]
  print "availabe spaces #{available_spaces}"
  # Generates a random number from the available spaces array
  return available_spaces.shuffle.first

end



puts "Your Turn"
puts "Enter the box number"
player_input = gets.chomp
puts "You entered #{player_input}"

puts "The current tic tac toe after the  user input is"

current_game_boxes[player_input.to_i - 1] = 'X'


puts display_current_grid(current_game_boxes)


system_choice = get_system_input(current_game_boxes)
current_game_boxes[system_choice - 1] = 'O'

puts "The system chose \n #{system_choice}"

puts "Status of Tic Tac Toe after input from the system"

puts display_current_grid(current_game_boxes)


