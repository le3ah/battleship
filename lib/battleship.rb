class Game

def initialize
  @answer
end

def play_game

  puts "Welcome to BATTLESHIP"

  puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  puts ">"
  @answer = gets.chomp

  if @answer == "p"
    puts "Let's play!"
  elsif @answer == "i"
    puts "Here are the instructions"
  elsif @answer == "q"
    puts "We're sorry to see you go.  Have a great day!"
  else
    puts "You've entered an invalid command, please try to start the game again."
    # let's add a loop here so that the player doesn't need to manually restart.
  end
end


end


game_1 = Game.new
game_1.play_game
