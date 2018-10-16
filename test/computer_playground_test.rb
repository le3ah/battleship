require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer_playground'

class ComputerTest < Minitest::Test

def test_computer_exists
  computer = Computer.new
  assert_instance_of Computer, computer
end

def test_ships_map_correctly
  computer = Computer.new
  assert_equal 2, computer.map_ship_1.count
  assert_equal 3, computer.map_ship_2.count
end

def test_computer_missile_is_string
  computer = Computer.new
  assert_equal String, computer.computer_fires_missile.class
end

# testing private methods using send below

def test_random_sort_picks_ship_1_integer_in_array
  computer = Computer.new
  assert_equal Integer, computer.send(:computer_ship_1_coordinate_1)[0].class
  assert_equal Array, computer.send(:computer_ship_1_coordinate_1).class
end

def test_pick_change_coordinates_is_string
  computer = Computer.new
  assert_equal String, computer.send(:pick_change_coordinate).class
end

def test_ship_2_coordinate_1_returns_array
  computer = Computer.new
  computer.send(:pick_change_coordinate)
  computer.send(:computer_ship_1_coordinate_1)
  computer.send(:pick_coordinate_2)
  assert_equal Array, computer.send(:ship_2_coordinate_1).class
end

def test_ship_2_coordinate_2_returns_integers
  computer = Computer.new
  computer.send(:pick_change_coordinate)
  computer.send(:computer_ship_1_coordinate_1)
  computer.send(:pick_coordinate_2)
  computer.send(:ship_2_coordinate_1)
  assert_equal Integer, computer.send(:ship_2_coordinate_2)[0].class
  assert_equal Integer, computer.send(:ship_2_coordinate_2)[1].class
end

def test_pick_coordinate_3_returns_integer
  computer = Computer.new
  computer.send(:pick_change_coordinate)
  computer.send(:computer_ship_1_coordinate_1)
  computer.send(:pick_coordinate_2)
  computer.send(:ship_2_coordinate_1)
  computer.send(:ship_2_coordinate_2)
  ship_2_coord_1 = computer.send(:ship_2_coordinate_1)
  ship_2_coord_2 = computer.send(:ship_2_coordinate_2)
  assert_equal Integer, computer.send(:pick_coordinate_3, ship_2_coord_1, ship_2_coord_2).class
end


end
