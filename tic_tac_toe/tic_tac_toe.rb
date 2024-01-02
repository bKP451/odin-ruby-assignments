require_relative 'utility_helpers'

t = [1, 2, 3, 4, 5, 6, 7, 8, 9]
current_game_boxes = ['', '', '', '', '', '', '', '', '']
player_steps = [ ]
system_steps = [ ]


tic_tac = [t[0], t[1], t[2], t[3], t[4], t[5], t[6], t[7], t[8]]

puts "------------"
puts "TIC TAC TOE"
puts "-------------\n \n"

# Game starts here
continue_game = true
while continue_game
  puts "Continue game is #{continue_game}"
  play_game(continue_game, current_game_boxes, tic_tac, player_steps, system_steps)
end