require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer'

class ComputerTest < Minitest::Test

def test_computer_exists
  computer = Computer.new
  assert_instance_of Computer, computer
end

def test_random_sort_picks_ship_1
  computer = Computer.new
  assert_equal String, computer.random_sort_ship_1.class
end

def test_create_new_grid_works
  computer = Computer.new
  computer.random_sort_ship_1
  assert_equal Array, computer.create_new_grid.class
end

def test_random_sort_picks_ship_2
  computer = Computer.new
  computer.random_sort_ship_1
  computer.create_new_grid
  assert_equal String, computer.random_sort_ship_2.class
end

def test_ship_1_coordinate_1_does_not_equal_ship_1_coordinate_2
  computer = Computer.new
  computer.random_sort_ship_1
  computer.create_new_grid
  computer.random_sort_ship_2
  assert computer.random_sort_ship_1 != computer.random_sort_ship_2
#  assert @computer_ship_coordinate_1 != @comptuer_ship_coordinate_2
end

# def test_second_ship_grid_does_not_include_ship_1
#   computer = Computer.new
#   computer.random_sort_ship_1
#   computer.create_new_grid
#   computer.random_sort_ship_2
#   assert
# end
end
