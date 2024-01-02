require_relative 'instructions.rb'

class String
  def black;          "\e[30m#{self}\e[0m" end
  def red;            "\e[31m#{self}\e[0m" end
  def green;          "\e[32m#{self}\e[0m" end
  def brown;          "\e[33m#{self}\e[0m" end
  def blue;           "\e[34m#{self}\e[0m" end
  def magenta;        "\e[35m#{self}\e[0m" end
  def cyan;           "\e[36m#{self}\e[0m" end
  def gray;           "\e[37m#{self}\e[0m" end
  
  def bg_black;       "\e[40m#{self}\e[0m" end
  def bg_red;         "\e[41m#{self}\e[0m" end
  def bg_green;       "\e[42m#{self}\e[0m" end
  def bg_brown;       "\e[43m#{self}\e[0m" end
  def bg_blue;        "\e[44m#{self}\e[0m" end
  def bg_magenta;     "\e[45m#{self}\e[0m" end
  def bg_cyan;        "\e[46m#{self}\e[0m" end
  def bg_gray;        "\e[47m#{self}\e[0m" end
  
  def bold;           "\e[1m#{self}\e[22m" end
  def italic;         "\e[3m#{self}\e[23m" end
  def underline;      "\e[4m#{self}\e[24m" end
  def blink;          "\e[5m#{self}\e[25m" end
  def reverse_color;  "\e[7m#{self}\e[27m" end
end

def colorize(number)
  case number
  when '1'
    return " #{number} ".bg_blue
  when '2'
    return " #{number} ".bg_green
  when '3'
    return " #{number} ".bg_gray
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


def display_colorized_input(human_guess)
  l = ''
  comparison = ''
  for i in 0..3
    l = l + colorize(human_guess[i]) + "\t"
    comparison = comparison + '○' + "\t"
  end
  puts l + "\t" + comparison
end

def let_human_play
  human_cracked_the_code = false
  human_guesses = [ ]
  while !human_cracked_the_code 
    for i in 1..12 do
      puts "Turn ##{i}: Type in four numbers ( 1-6 ) to guess code"
      human_guesses[i] = gets.chomp
      display_colorized_input(human_guesses[i])

    end
    human_cracked_the_code = true
  end
end


def computer_plays
  puts "HHAH"
end

def human_plays
  puts "The computer has set the 'master code' and now it is for you to break the code"
  let_human_play
end


game_mode_choice = gets.chomp

case game_mode_choice
when '1'
  puts "Enter the code for the computer to break"
  computer_plays
when '2'
  puts "You should now break the code"
  human_plays
else
  puts "Enter '1' or '2' to select the game mode"
end

