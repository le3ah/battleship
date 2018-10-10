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
def test_ship_1_coordinate_1_does_not_equal_ship_1_coordinate_2
  computer = Computer.new
  # require 'pry'; binding.pry 
  assert @computer_ship_coordinate_1 != @comptuer_ship_coordinate_2
end
end
