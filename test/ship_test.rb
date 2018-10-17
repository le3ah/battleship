require 'minitest/pride'
require 'minitest/autorun'
require './lib/ship'

class ShipTest < Minitest::Test
  def test_ship_exists
   ship1 = Ship.new("computer", ["A1", "A2"])
   assert_instance_of Ship, ship1
  end
  def test_ship_knows_its_length
    ship1 = Ship.new("computer", ["A1", "A2"])
    assert_equal 2 , ship1.get_ship_size
  end
  def test_it_counts_hits
    ship1 = Ship.new("computer", ["A1", "A2"])
    assert_equal 0, ship1.hit_number
    ship1.record_hits
    assert_equal 1, ship1.hit_number
    ship1.record_hits
    assert_equal 2, ship1.hit_number
  end
  def test_if_it_is_sunk
    ship1 = Ship.new("computer", ["A1", "A2"])
    assert_equal false, ship1.check_sunk
    ship1.record_hits
    ship1.record_hits
    assert_equal true, ship1.check_sunk
  end
  def test_if_larger_ship_can_be_sunk
    ship1 = Ship.new("computer", ["A1", "A2", "A3"])
    assert_equal false, ship1.check_sunk
    ship1.record_hits
    ship1.record_hits
    ship1.record_hits
    assert_equal true, ship1.check_sunk
  end

end
