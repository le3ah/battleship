require 'minitest/autorun'
require 'minitest/pride'

class PlayerTest < Minitest::Test

  def test_player_exists
  player = Player.new(name)
  assert_instance_of Player, player
  end

  def test_player_can_place_ship
    player = Player.new(name)
    assert_equal  ,player.places_ship
  end
end
