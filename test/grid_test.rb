require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid.rb'

class GridTest < Minitest::Test

  def test_grid_exists
    human_grid = Grid.new
    assert_instance_of Grid, human_grid
  end

  def test_ship_exists
    ship = Ship.new("computer", "")
    assert_instance_of Ship, ship
  end
end
