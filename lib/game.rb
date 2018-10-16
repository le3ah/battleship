require "./lib/player.rb"
require 'pry'

class Game
  attr_reader :human_coordinates_ship_1

  def initialize
    @computer = Computer.new
    @human = Human.new
  end

  def welcome
    puts "Welcome to BATTLESHIP"
  end

  def want_to_play
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    puts ">"
    @answer = gets.chomp
  end

  def answer_output
    if @answer == "p"
      puts "Let's play!"
      player_human_place_ships
      true
    elsif @answer == "i"
      puts "Here are the instructions"
      true
    elsif @answer == "q"
      puts "We're sorry to see you go.  Have a great day!"
      true
    else
      false
    end
  end

  def play_game
    welcome
    want_to_play
    if !answer_output
      puts "You've entered an invalid command, please try to start the game again."
      sleep(1.0)
      play_game
    end
  end

  def player_human_place_ships
    player = Player.new

    puts  "I have laid out my ships on the grid.
      You now need to layout your two ships.
      The first is two units long and the
      second is three units long.
      The grid has A1 at the top left and D4 at the bottom right and looks like this:
      "
    create_human_grid
    puts @human_grid.prints_board
    puts  "Enter the squares for the two-unit ship:
     please use a capital letter and number separates by a space followed by another capital letter and number like this: A1 A2"
    puts ">"
      @human_coordinates_ship_1 = gets.chomp.split
      @human.human_grid.create_ships("human", @human_coordinates_ship_1)
    puts "Valid coordinates, now place your three-unit ship:
    please use a capital letter and number separates by a space followed by another capital letter and number like this: A1 A2"
      @human_coordinates_ship_2 = gets.chomp.split
  end

  def create_human_grid
    @human_grid = Grid.new
  end

  def start_human_shots
    puts "Where do you want to hit? Enter 1 coordinate"
    puts ">"
     @player_shot = gets.chomp.upcase
  end


  def is_it_a_hit_or_a_miss
    if get_all_computer_ship_coordinates.flatten.include?(@player_shot)
      puts "Your shot hit"
    else
      puts "Your shot missed"
    end
  end
end
game = Game.new
game.welcome
game.want_to_play
game.answer_output
game.play_game
