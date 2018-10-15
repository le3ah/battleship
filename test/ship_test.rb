require 'minitest/pride'
require 'minitest/autorun'
require './lib/ship'

class ShipTest < Minitest::Test
  def test_ship_exists
   ship1 = Ship.new(2, ["A1", "A2"])
   assert_instance_of Ship, ship1
  end

  def test_if_coordinates_overlap
    ship1 = Ship.new(2, ["A1", "A2"])
    ship2 = Ship.new(3, ["A2", "B2", "C2"])
    assert_equal
  end

  def test_if_coordinates_wrap_around_the_grid
    skip
    ship1 = Ship.new(2, ["A1", "A2"])
    ship2 = Ship.new(3, ["A2", "B2", "C2"])

  end
end
