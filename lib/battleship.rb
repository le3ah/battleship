require "./lib/grid.rb"
require ".lib/ship.rb"

class Game

attr_reader :human_coordinates_ship_1

def initialize
  @answer
  ship1 = Ship.new(2, ["A1", "B1"])
  ship2 = Ship.new(2, ["D2", "D3"])
  @computer_ships = [ ship1, ship2]
end

def play_game

  puts "Welcome to BATTLESHIP"

  puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  puts ">"
  @answer = gets.chomp

  if @answer == "p"
    puts "Let's play!"
    player_human_place_ships
  elsif @answer == "i"
    puts "Here are the instructions"
  elsif @answer == "q"
    puts "We're sorry to see you go.  Have a great day!"
  else
    puts "You've entered an invalid command, please try to start the game again."
    sleep(1.0)
    play_game
  end
end

def player_human_place_ships

  puts  "I have laid out my ships on the grid.
    You now need to layout your two ships.
    The first is two units long and the
    second is three units long.
    The grid has A1 at the top left and D4 at the bottom right and looks like this:
    "

    @human_grid = Grid.new
    puts human_grid.board

  puts  "Enter the squares for the two-unit ship:"
  puts ">"
    @human_coordinates_ship_1 = gets.chomp.upcase
  puts "Valid coordinates, now place your three-unit ship:"
    @human_coordinates_ship_2 = gets.chomp.upcase

end

def shot
  puts "where do you want to hit? Enter 1 coordinate"
  puts ">"
   @player_shot = gets.chomp.upcase
   all_ship_coordinates = []
   @computer_ships.each do |ship|
     all_ship_coordinates << ship.coordinates
   end
  #pry in here to check my variables 
  if all_ship_coordinates.include?(@player_shot)
    # @human_gird check the players shot against the array of computer coordinates.
    # make sure you can call the board rows HERE
  end
end
end


game_1 = Game.new
game_1.play_game
