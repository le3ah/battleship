require 'minitest/autorun'
require 'minitest/pride'
#require './lib/ship.rb'
require './lib/grid.rb'
require 'pry'
require './lib/computer_playground'
class GridTest < Minitest::Test

  def test_grid_exists
    human_grid = Grid.new
    assert_instance_of Grid, human_grid
  end

  def test_store_h_on_grid
    human_grid = Grid.new
    human_grid.store_h_on_grid("A1")
    assert_equal "H" , human_grid.rows["A"]["1"]
  end

  def test_coordinates_on_grid
    ai_grid = Grid.new
    computer = Computer.new
    ship_1 = computer.map_ship_1
    ship_2 = computer.map_ship_2
    assert_equal true, ai_grid.ships_on_grid?(ship_1)
    assert_equal true, ai_grid.ships_on_grid?(ship_2)
  end

  def test_ship_1_is_vertical_or_horizontal
    ai_grid = Grid.new
    computer = Computer.new
    ship_1 = computer.map_ship_1
    assert_equal true, ai_grid.ship_1_is_vertical_or_horizontal?(ship_1)
  end

  def test_ship_2_is_vertical_or_horizontal
    ai_grid = Grid.new
    computer = Computer.new
    ship_2 = computer.map_ship_2
    assert_equal true, ai_grid.ship_2_is_vertical_or_horizontal?(ship_2)
  end

  def test_ships_are_not_diagonal
    ai_grid = Grid.new
    computer = Computer.new
    ship_1 = computer.map_ship_1
    ship_2 = computer.map_ship_2
    assert_equal true, ai_grid.ships_not_diagonal?(ship_1)
    assert_equal true, ai_grid.ships_not_diagonal?(ship_2)
  end

  def test_ships_cannot_wrap
    ai_grid = Grid.new
    computer = Computer.new
    ship_1 = computer.map_ship_1
    ship_2 = computer.map_ship_2
    assert_equal true, ai_grid.ships_cannot_wrap?(ship_1)
    assert_equal true, ai_grid.ships_cannot_wrap?(ship_2)
  end

  def test_ships_are_not_equal
    ai_grid = Grid.new
    computer = Computer.new
    ship_1 = computer.map_ship_1
    ship_2 = computer.map_ship_2
    assert_equal true, ai_grid.ships_cannot_overlap?(ship_1, ship_2)
  end

  def test_all_coordinates_pass_validation
    ai_grid = Grid.new
    computer = Computer.new
    ship_1 = computer.map_ship_1
    ship_2 = computer.map_ship_2
    ai_grid.ships_on_grid?(ship_1)
    ai_grid.ships_on_grid?(ship_2)
    ai_grid.coordinate_split(ship_1)
    ai_grid.coordinate_split(ship_2)
    ai_grid.ship_1_is_vertical_or_horizontal?(ship_1)
    ai_grid.ship_2_is_vertical_or_horizontal?(ship_2)
    ai_grid.ships_not_diagonal?(ship_1)
    ai_grid.ships_not_diagonal?(ship_2)
    ai_grid.ships_cannot_overlap?(ship_1, ship_2)
    assert_equal "Ship coordinates are valid.", ai_grid.validate(ship_1, ship_2)
  end

end
