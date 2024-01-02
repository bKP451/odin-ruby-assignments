

def check_for_winner(continue_game, number_of_filled_boxes, player_steps, system_steps)
  winning_combination = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ]

  puts "number of filled boxes #{number_of_filled_boxes}"
  puts "Checking for winner"
  puts "player steps #{player_steps}"
  if number_of_filled_boxes < 8
    if winning_combination.include?(player_steps)  
      puts "Player Won"
      continue_game = false
    elsif winning_combination.include?(system_steps)
      puts "System Won"
      continue_game = false
    end
  end
  if number_of_filled_boxes > 8 
    puts "Match Tied"
  else 
    puts "Error"
  end
end