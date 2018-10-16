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
  assert_equal Integer, computer.ship_2_coordinate_2[0].class
  assert_equal Integer, computer.ship_2_coordinate_2[1].class
end

def test_pick_coordinate_3_returns_integer
  computer = Computer.new
  computer.pick_change_coordinate
  computer.computer_ship_1_coordinate_1
  computer.pick_coordinate_2
  computer.ship_2_coordinate_1
  computer.ship_2_coordinate_2
  assert_equal Integer, computer.pick_coordinate_3(computer.ship_2_coordinate_1, computer.ship_2_coordinate_2).class
end

def test_ship_2_coordinate_3_is_an_integer
  computer = Computer.new
  computer.pick_change_coordinate
  computer.computer_ship_1_coordinate_1
  computer.pick_coordinate_2
  computer.ship_2_coordinate_1
  computer.ship_2_coordinate_2
  computer.pick_coordinate_3(computer.ship_2_coordinate_1[0], computer.ship_2_coordinate_2[0])
  computer.pick_coordinate_3(computer.ship_2_coordinate_1[1], computer.ship_2_coordinate_2[1])
  assert_equal Integer, computer.ship_2_coordinate_3[0].class
  assert_equal Integer, computer.ship_2_coordinate_3[1].class
end

def test_ships_map_correctly
  computer = Computer.new
  computer.pick_change_coordinate
  computer.computer_ship_1_coordinate_1
  computer.pick_coordinate_2
  computer.ship_2_coordinate_1
  computer.ship_2_coordinate_2
  computer.pick_coordinate_3(computer.ship_2_coordinate_1[0], computer.ship_2_coordinate_2[0])
  computer.pick_coordinate_3(computer.ship_2_coordinate_1[1], computer.ship_2_coordinate_2[1])
  computer.ship_2_coordinate_3
  assert_equal 2, computer.map_ship_1.count
  require 'pry'
  binding.pry
  assert_equal 3, computer.map_ship_2.count
end

end
