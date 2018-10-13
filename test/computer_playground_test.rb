require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer_playground'

class ComputerTest < Minitest::Test

def test_computer_exists
  computer = Computer.new
  assert_instance_of Computer, computer
end

def test_random_sort_picks_ship_1_integer_in_array
  computer = Computer.new
  assert_equal Integer, computer.computer_ship_1_coordinate_1[0].class
  assert_equal Array, computer.computer_ship_1_coordinate_1.class
end

def test_pick_change_coordinates_is_string
  computer = Computer.new
  assert_equal String, computer.pick_change_coordinate.class
end

def test_pick_coordinate_2_returns_array_of_integers
  computer = Computer.new
  computer.pick_change_coordinate
  computer.computer_ship_1_coordinate_1
  assert_equal Integer, computer.pick_coordinate_2[1].class
  assert_equal Array, computer.pick_coordinate_2.class
end
def test_ship_2_coordinate_1_returns_array
  computer = Computer.new
  computer.pick_change_coordinate
  computer.computer_ship_1_coordinate_1
  computer.pick_coordinate_2
  assert_equal Array, computer.ship_2_coordinate_1.class
end

def test_ship_2_coordinate_2_returns_integers
  computer = Computer.new
  computer.pick_change_coordinate
  computer.computer_ship_1_coordinate_1
  computer.pick_coordinate_2
  computer.ship_2_coordinate_1
  assert_equal Integer, computer.ship_2_coordinate_2[1].class
end

end
