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

  def ships_on_grid(coordinate)
    if @index_x.index(coordinate.first) != nil && @index_y.index(coordinate.last) != nil
      true
    else
    end
  end

  def ship_1_is_vertical_or_horizontal(first,last)
    if @index_x.index(first.first) - @index_x.index(last.first) == 0 ||
      @index_x.index(first.first) - @index_x.index(last.first) == -1 ||
      @index_x.index(first.first) - @index_x.index(last.first) == 1
      true
    elsif @index_y.index(first.last) - @index_y.index(last.last) == 0 ||
      @index_y.index(first.last) - @index_y.index(last.last) == -1 ||
      @index_y.index(first.last) - @index_y.index(last.last) == 1
      true
    else
    end

  
  end

    def ship_2_is_vertical_or_horizontal(first,last)
      if @index_x.index(first.first) - @index_x.index(last.first) == 0 ||
        @index_x.index(first.first) - @index_x.index(last.first) == -2 ||
        @index_x.index(first.first) - @index_x.index(last.first) == 2
        true
      elsif @index_y.index(first.last) - @index_y.index(last.last) == 0 ||
        @index_y.index(first.last) - @index_y.index(last.last) == -2 ||
        @index_y.index(first.last) - @index_y.index(last.last) == 2
        true
      else
      end
    end


end
