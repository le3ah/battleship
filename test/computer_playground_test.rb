require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer_playground'

class ComputerTest < Minitest::Test

def test_computer_exists
  computer = Computer.new
  assert_instance_of Computer, computer
end

def test_random_sort_picks_ship_1
  computer = Computer.new
  assert_equal Array, computer.computer_ship_1_coordinate_1.class
end

def test_pick_change_coordinates_is_string
  computer = Computer.new
  assert_equal String, computer.pick_change_coordinate.class
end

def test_coordinate_2_returns_array
  computer = Computer.new
  computer.pick_change_coordinate
  assert_equal Array, computer.pick_coordinate_2_ship_1.class
end
def test_coordinate_2_returns_array
  computer = Computer.new
  computer.pick_change_coordinate
  computer.pick_coordinate_2_ship_1
  assert_equal Array, computer.ship_2_coordinate_1.class
end
end
