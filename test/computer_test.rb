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
end

def test_ship_2_coordinate_1_does_not_equal_ship_1_coordinate_1_or_2
  computer = Computer.new
  computer.random_sort_ship_1
  computer.create_new_grid
  computer.random_sort_ship_2
  assert computer.second_ship_coordinate_1 != computer.random_sort_ship_1
  assert computer.second_ship_coordinate_1 != computer.random_sort_ship_2
end
def test_second_ship_grid_works
  computer = Computer.new
  computer.random_sort_ship_1
  computer.create_new_grid
  computer.random_sort_ship_2
  computer.second_ship_coordinate_1
  assert_equal Array, computer.create_second_ship_grid.class
end

def test_second_ship_coordinate_2_does_not_equal_other_coordinates
  computer = Computer.new
  computer.random_sort_ship_1
  computer.create_new_grid
  computer.random_sort_ship_2
  computer.second_ship_coordinate_1
  computer.create_second_ship_grid
  assert computer.random_sort_ship_2_coordinate_2 != computer.random_sort_ship_1
  assert computer.random_sort_ship_2_coordinate_2 != computer.random_sort_ship_2
  assert computer.random_sort_ship_2_coordinate_2 != computer.second_ship_coordinate_1
end

def test_second_ship_coordinate_3_does_not_equal_other_coordinates
  computer = Computer.new
  computer.random_sort_ship_1
  computer.create_new_grid
  computer.random_sort_ship_2
  computer.second_ship_coordinate_1
  computer.create_second_ship_grid
  assert computer.random_sort_ship_2_coordinate_3 != computer.random_sort_ship_1
  assert computer.random_sort_ship_2_coordinate_3 != computer.random_sort_ship_2
  assert computer.random_sort_ship_2_coordinate_3 != computer.second_ship_coordinate_1
  assert computer.random_sort_ship_2_coordinate_3 != computer.random_sort_ship_2_coordinate_2
end

end
