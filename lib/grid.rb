require 'pry'
require "./lib/ship.rb"

class Grid
 attr_reader :rows, :ships
#determine how you are going to store the shot information on the board
#and how the board is printed with the shot information
#consider making the board structure an instance variable to hold the data for shots
  def initialize
    @all_ships = []
    @rows = { "A" => {
      "A" => "A",
      "1" => " ",
      "2" => " ",
      "3" => " ",
      "4" => " "
      } ,

      "B" =>
      {
        "B" => "B",
        "1" => " ",
        "2" => " ",
        "3" => " ",
        "4" => " "
      },
      "C" =>
      {
        "C" => "C",
        "1" => " ",
        "2" => " ",
        "3" => " ",
        "4" => " "
      },
      "D" =>
      {
        "D" => "D",
        "1" => " ",
        "2" => " ",
        "3" => " ",
        "4" => " "
      }
    }
  end

  def prints_board
    puts "============"
    puts ". 1 2 3 4"
    empty_grid = rows.keys.each do |key|
      puts rows[key].values.join
    end

    puts "============
    "
  end
  def get_human_coordinates_for_ship(@human_coordinates_ship_1, @human_coordinates_ship_2)

  end

  def create_ships(player,coordinates)
    ship = Ship.new(player, coordinates)
    @all_ships << ship
  end

  def get_all_computer_ship_coordinates
     all_ship_coordinates = []
     @all_ships.each do |ship|
       all_ship_coordinates << ship.coordinates
     end
     all_ship_coordinates
  end

  def validate_hit
     ship2.coordinates.each do |coordinate|
         ship1.include?(coordinate)
         puts "Your previous ship is in that spot, pick another ship position"
        # here I need to call the method that prompts for new coordinates for the second ship
     end
  end

  def tell_ship_it_is_hit
    if validate_hit == true


  end

  def store_h_on_grid(coordinate)
    x , y = coordinate.chars
    rows[x][y] = "H"
  end

end
