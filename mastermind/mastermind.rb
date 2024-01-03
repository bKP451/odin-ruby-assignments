require_relative 'instructions.rb'
require_relative 'computer_play.rb'

def generate_master_code
  master_code = ''
  for i in 1..4
    master_code = master_code + rand(1..6).to_s
  end
  return master_code
end

def colorize(number)
  case number
  when '1'
    return " #{number} ".bg_blue
  when '2'
    return " #{number} ".bg_green
  when '3'
    return " #{number} ".bg_cyan
  when '4'
    return " #{number} ".bg_magenta
  when '5'
    return " #{number} ".bg_brown
  when '6'
    return " #{number} ".bg_red
  else 
    return " #{number} ".italic
  end
end


def color_circle(individual_number, number_index)
  master_code = $master_code.to_s 
  if master_code.include?(individual_number)
    if(master_code[number_index] == individual_number)
      $iteration_comparison_array[number_index ] = '1'
      return ' ○ '.bg_green
    else 
      return ' ○ '.bg_gray
    end
  else 
    return '○'
  end
end


def display_colorized_input(human_guess)
  individual_input_numbers = ''
  comparison = ''

  3.times do |i|
    individual_input_numbers = individual_input_numbers + colorize(human_guess[i]) + "\t"
    comparison = comparison + color_circle(human_guess[i], i) + "\t"
  end
  puts individual_input_numbers + "\t" + comparison
end

def winning_logic
  win = true
  for i in 0..3
    if $iteration_comparison_array[i] != '1'
      win = false
    end
  end
  return win
end

def let_human_play
  human_cracked_the_code = false
  human_guesses = [ ]
  i = 0
  loop do
    i = i + 1
    puts "Turn ##{i}: Type in four numbers ( 1-6 ) to guess code"
    human_guesses[i] = gets.chomp
    display_colorized_input(human_guesses[i])
    human_cracked_the_code = winning_logic

    if human_cracked_the_code || i == 12
      winning_message(human_cracked_the_code, i)
      break
    end
  end
end


def winning_message(game_success, iteration)
  if iteration == 12
    puts "The Master code was #{$master_code}. Try again"
  end

  if game_success
    puts "Hurray you won the game. Would you play again"
  end
end

def human_plays
  # puts "The computer has set the 'master code' and now it is for you to break the code"
  let_human_play
end



continue_playing = 'Y'

until continue_playing == 'N' do
  instructions
  $master_code = generate_master_code 
  $iteration_comparison_array = ['o', 'o', 'o', 'o']
  game_mode_choice = gets.chomp
  case game_mode_choice
  when '1'
    computer_plays
  when '2'
    puts "You should now break the code"
    human_plays
  else
    puts "Enter '1' or '2' to select the game mode"
  end
  puts "Do you want to play again? Press any other key for continue. To quit press, 'n'"
  continue_playing = gets.chomp.upcase
end