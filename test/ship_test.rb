require 'minitest/pride'
require 'minitest/autorun'
require './lib/ship'

class ShipTest < Minitest::Test
  def test_ship_exists
   ship1 = Ship.new("computer", ["A1", "A2"])
   assert_instance_of Ship, ship1
  end
end
