require "./lib/grid.rb"
require "./lib/ship.rb"
require 'pry'
class Game

attr_reader :human_coordinates_ship_1

  def initialize
    @answer
    ship1 = Ship.new(2, ["A1", "B1"])
    ship2 = Ship.new(2, ["D2", "D3"])
    @computer_ships = [ ship1, ship2]
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

    puts  "I have laid out my ships on the grid.
      You now need to layout your two ships.
      The first is two units long and the
      second is three units long.
      The grid has A1 at the top left and D4 at the bottom right and looks like this:
      "

      @human_grid = Grid.new
      puts @human_grid.board

    puts  "Enter the squares for the two-unit ship:"
    puts ">"
      @human_coordinates_ship_1 = gets.chomp.upcase
    puts "Valid coordinates, now place your three-unit ship:"
      @human_coordinates_ship_2 = gets.chomp.upcase

  end

  def start_human_shots
    puts "Where do you want to hit? Enter 1 coordinate"
    puts ">"
     @player_shot = gets.chomp.upcase
  end

  def get_all_computer_ship_coordinates
     all_ship_coordinates = []
     @computer_ships.each do |ship|
       all_ship_coordinates << ship.coordinates
     end
     all_ship_coordinates
  end

  def is_it_a_hit_or_a_miss
    if get_all_computer_ship_coordinates.flatten.include?(@player_shot)
      puts "Your shot hit"
    else
      puts "Your shot missed"
    end
  end

  def store_h_on_grid
    stored_h = @human_grid.rows.each do |row|
      row_keys =  row[1].keys[1..5]
      if row_keys.include?(@player_shot)
        row[1][@player_shot] = "h"
      end
    end
    stored_h
  end
  def store_m_on_grid
    @human_grid.rows.each do |row|
      row_keys =  row[1].keys[1..5]
      if row_keys.include?(@player_shot) == false
        row[1][@player_shot] = "m"
        #we need to skip the row and go to next one if the player shot is not included in row
      end
    end
  end
end
