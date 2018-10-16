require 'pry'
require "./lib/ship.rb"
require './lib/computer_playground'

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
    @index_x = ["A","B","C","D"]
    @index_y = ["1", "2", "3", "4"]
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

  def store_h_on_grid(coordinate)
    x , y = coordinate.chars
    rows[x][y] = "H"
  end

  def ships_on_grid?(coordinate)
    result = coordinate.map do |x|
    @index_x.index(x.split("").first) != nil &&
      @index_y.index(x.split("").last) != nil
    end
    if result[0] || result[1]
      true
    elsif result[0] || result[2]
      true
    else
    end
  end

  def coordinate_split(coordinate)
    first = coordinate.first.split("")
    last = coordinate.last.split("")
    @x_coordinate = @index_x.index(first.first) - @index_x.index(last.first)
    @y_coordinate = @index_y.index(first.last) - @index_y.index(last.last)
  end

  def ship_1_is_vertical_or_horizontal?(coordinate)
    coordinate_split(coordinate)
    if @x_coordinate == 0 ||
      @x_coordinate == -1 ||
      @x_coordinate == 1
      true
    elsif @y_coordinate == 0 ||
      @y_coordinate == -1 ||
      @y_coordinate == 1
      true
    else false
    end
  end

  def ship_2_is_vertical_or_horizontal?(coordinate)
    coordinate_split(coordinate)
    if @x_coordinate == 0 ||
      @x_coordinate == -2 ||
      @x_coordinate == 2
      true
    elsif @y_coordinate == 0 ||
      @y_coordinate == -2 ||
      @y_coordinate == 2
      true
    else false
    end
  end

  def ships_not_diagonal?(coordinate)
    coordinate_split(coordinate)
    if @x_coordinate  == 0
      @y_coordinate == -1 ||
      @y_coordinate == 1 ||
      @y_coordinate == -2 ||
      @y_coordinate == 2
    else
      @x_coordinate  == -1 ||
      @x_coordinate  == 1 ||
      @x_coordinate  == -2 ||
      @x_coordinate  == 2
    end
  end

  def ships_cannot_wrap?(coordinate)
    coordinate_split(coordinate)
    if @x_coordinate  == 3
      false
    elsif @y_coordinate == 3
      false
    else true
    end

  
  end

  def ships_cannot_overlap?(ship_1, ship_2)
    if ship_1[0] != ship_1[1] &&
      ship_1[0] != ship_2[0] &&
      ship_1[0] != ship_2[1] &&
      ship_1[0] != ship_2[2] &&
      ship_1[1] != ship_2[0] &&
      ship_1[1] != ship_2[1] &&
      ship_1[1] != ship_2[2] &&
      ship_2[0] != ship_2[1] &&
      ship_2[0] != ship_2[2] &&
      ship_2[1] != ship_2[2]
      true
    else false
    end
  end

  def validate(ship_1, ship_2)
    if ships_on_grid?(ship_1) == true &&
      ships_on_grid?(ship_2) == true &&
      ship_1_is_vertical_or_horizontal?(ship_1) == true &&
      ship_2_is_vertical_or_horizontal?(ship_2) == true &&
      ships_not_diagonal?(ship_1) == true &&
      ships_not_diagonal?(ship_2) == true &&
      ships_cannot_wrap?(ship_1) == true &&
      ships_cannot_wrap?(ship_2) == true &&
      ships_cannot_overlap?(ship_1, ship_2) == true
      p "Ship coordinates are valid."
    else
      p "Ship coordinates are not valid."
    end
  end

end
