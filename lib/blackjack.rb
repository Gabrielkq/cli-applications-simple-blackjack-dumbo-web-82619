require "pry"

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(total)
  # code #disp
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets "h\n".chomp
end

def end_game(argue)
  puts "Sorry, you hit 27. Thanks for playing!"
end

def initial_round
  a = deal_card
  b= deal_card
 
   display_card_total(a+b)
   return a+b
end

def hit?(total)
  # code hit? here
prompt_user
answer = get_user_input
  if answer == "h"
  total += deal_card
  elsif answer == "s"
  total
  else 
    invalid_command
    prompt_user
    get_user_input
  end
  
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
 # cards = initial_round
 # while cards < 21 do
   # cards = hit?(cards)
   # display_card_total(cards)
 # end
#end_game
end
    
