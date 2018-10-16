require 'minitest/autorun'
require 'minitest/pride'
#require './lib/ship.rb'
require './lib/grid.rb'
require 'pry'
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
    assert_equal true, ai_grid.ships_on_grid(["A","1"])
  end

  def test_ship_1_is_vertical_or_horizontal
    ai_grid = Grid.new
    assert_equal true, ai_grid.ship_1_is_vertical_or_horizontal(["A","1"],["B","1"])
  end

  def test_ship_2_is_vertical_or_horizontal
    ai_grid = Grid.new
    assert_equal true, ai_grid.ship_1_is_vertical_or_horizontal(["A","1"],["C","1"])
  end

end
