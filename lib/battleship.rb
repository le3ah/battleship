require "./lib/grid.rb"

class Game
attr_reader :human_coordinates_ship_1

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

def player_human_place_ships
  puts  "I have laid out my ships on the grid.
    You now need to layout your two ships.
    The first is two units long and the
    second is three units long.
    The grid has A1 at the top left and D4 at the bottom right and looks like this:
    "

  human_grid = Grid.new
  puts human_grid.board

  puts  "Enter the squares for the two-unit ship:"
  puts ">"
  @human_coordinates_ship_1 = gets.chomp.upcase
  puts "Valid coordinates, now place your three-unit ship:"
  @human_coordinates_ship_2 = gets.chomp.upcase
end
end


game_1 = Game.new
game_1.play_game
game_1.player_human_place_ships
