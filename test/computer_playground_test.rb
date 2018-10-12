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

end
