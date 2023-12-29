t = [1, 2, 3, 4, 5, 6, 7, 8, 9]
current_game_boxes = ['', '', '', '', '', '', '', '', '']

tic_tac = [t[0], t[1], t[2], t[3], t[4], t[5], t[6], t[7], t[8]]

def display_current_grid(current_game_boxes, tic_tac)
  puts " #{current_game_boxes[0]}  | #{current_game_boxes[1]} |  #{current_game_boxes[2]}\t\t\t\t #{tic_tac[0]}  | #{tic_tac[1]} |  #{tic_tac[2]}\n ---+---+--- \t\t\t\t---+---+--- \n #{current_game_boxes[3]}  | #{current_game_boxes[4]} |  #{current_game_boxes[5]} \t \t \t \t#{tic_tac[3]}  | #{tic_tac[4]} |  #{tic_tac[5]} \n ---+---+--- \t\t\t\t---+---+--- \n #{current_game_boxes[6]}  | #{current_game_boxes[7]} |  #{current_game_boxes[8]} \t\t\t\t#{tic_tac[6]}  | #{tic_tac[7]} |  #{tic_tac[8]} "
end

def available_spaces(current_game_boxes)
  available_spaces = current_game_boxes.map.with_index {|box, idx| idx+1 if box.empty? } - [nil]
  return available_spaces
end

def get_system_input(current_game_boxes)
  avilable_spaces = avilable_spaces(current_game_boxes)
  # Generates a random number from the available spaces array
  return available_spaces.shuffle.first
end

puts "------------"
puts "TIC TAC TOE"
puts "-------------\n \n"


def play_game(current_game_boxes, tic_tac)
  display_current_grid(current_game_boxes, tic_tac)
  puts "Enter the box number"

  player_input = gets.chomp
  puts "You entered #{player_input}"
  
  current_game_boxes[player_input.to_i - 1] = 'X'
  tic_tac[player_input.to_i-1] = ''

  system_selection = get_system_input(current_game_boxes)
  current_game_boxes[system_selection -1] = 'O'
  tic_tac[system_selection.to_i-1] = ''

end

# Game starts here
i = 0
while i < 3
  puts "Round #{i}"
  play_game(current_game_boxes, tic_tac)
  i = i + 1
end


