require 'pry'
require "./lib/ship.rb"

class Grid
 attr_reader :rows, :all_computer_ships, :all_human_ships

  def initialize
    @all_computer_ships = []
    @all_human_ships = []
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

  def get_human_coordinates_for_ship(human_coordinates_ship_1, human_coordinates_ship_2)

  end

  def create_ships(player,coordinates)
    ship = Ship.new(player, coordinates)
    if player == "human"
      @all_human_ships << ship
    else
      @all_computer_ships << ship
    end
    ship
  end

  def get_all_computer_ship_coordinates
     @all_computer_ships.map do |ship|
       ship.coordinates
     end.flatten
  end

  def hit?(shot_coordinate)
    get_all_computer_ship_coordinates.include?(shot_coordinate)
  end

  # def tell_ship_it_is_hit
  #   if validate_hit == true
  # end
  #
  # def store_h_on_grid(coordinate)
  #   x , y = coordinate.chars
  #   rows[x][y] = "H"
  # end

end
