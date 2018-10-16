require 'pry'
require "./lib/ship.rb"
require './lib/computer_playground'

class Grid
 attr_reader :rows, :ships
#determine how you are going to store the shot information on the board
#and how the board is printed with the shot information
#consider making the board structure an instance variable to hold the data for shots
  def initialize
    @ships = ships
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

  def store_h_on_grid(coordinate)
    x , y = coordinate.chars
    rows[x][y] = "H"
  end

  def ships_on_grid?(coordinate)
    coordinate.map do |x|
    @index_x.index(x.split("").first) != nil &&
      @index_y.index(x.split("").last) != nil
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
    else false
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
    else false
    end
  end

  def ships_not_diagonal(first,last)
    if @index_x.index(first.first) - @index_x.index(last.first) == 0
      @index_y.index(first.last) - @index_y.index(last.last) == -1 ||
      @index_y.index(first.last) - @index_y.index(last.last) == 1 ||
      @index_y.index(first.last) - @index_y.index(last.last) == -2 ||
      @index_y.index(first.last) - @index_y.index(last.last) == 2
    else
      @index_x.index(first.first) - @index_x.index(last.first) == -1 ||
      @index_x.index(first.first) - @index_x.index(last.first) == 1 ||
      @index_x.index(first.first) - @index_x.index(last.first) == -2 ||
      @index_x.index(first.first) - @index_x.index(last.first) == 2
    end
  end

  def ships_cannot_wrap(first,last)
    if @index_x.index(first.first) == 0
      @index_x.index(last.first) != 3
    elsif @index_x.index(first.first) == 3
      @index_x.index(last.first) != 0
    elsif @index_y.index(first.last) == 0
      @index_y.index(last.last) != 3
    elsif @index_y.index(first.last) == 3
      @index_y.index(last.last) != 0
    else false
    end
  end

  def ships_cannot_overlap(first, second, third, fourth, fifth)
    if first != second &&
      first != third &&
      first != fourth &&
      first != fifth &&
      second != third &&
      second != fourth &&
      second != fifth &&
      third != fourth &&
      third != fifth &&
      fourth != fifth
      true
    else false
    end
  end

  # def validate
  #   if ships_on_grid(coordinate) == true &&
  #     ship_1_is_vertical_or_horizontal(first,last) == true &&
  #     ship_2_is_vertical_or_horizontal(first,last) == true &&
  #     ships_not_diagonal(first,last) == true &&
  #     ships_cannot_wrap(first,last) == true &&
  #     ships_cannot_overlap(first, second, third, fourth, fifth) == true
  #     p "Ship coordinates are valid."
  #   else
  #     p "Ship coordinates are not valid."
  #   end
  # end

end
