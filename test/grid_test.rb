require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid.rb'

class GridTest < Minitest::Test

  def test_grid_exists
    human_grid = Grid.new
    assert_instance_of Grid, human_grid
  end

  def test_you_can_create_ships
    grid = Grid.new
    assert_equal [], grid.all_ships
    grid.create_ships("computer", ["A1","A2"])
    assert_instance_of Ship, grid.all_ships[0]
  end

end
