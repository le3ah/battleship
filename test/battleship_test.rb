require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/battleship'

class GameTest < Minitest::Test
  def test_it_exists
    game = Game.new
    assert_instance_of Game, game
  end

  def test_we_can_get_all_ship_coordinates
    game = Game.new
    assert_equal [["A1", "B1"],["D2", "D3"]], game.get_all_computer_ship_coordinates
  end

  def test_human_grid_is_created
    game = Game.new
    assert_instance_of Grid , game.create_human_grid
  end

  def test_it_can_store_h_on_grid
    game = Game.new
    game.create_human_grid.board
    assert_equal "h", game.store_h_on_grid #have to assert that the value of the square that is hit = to h
  end

end
