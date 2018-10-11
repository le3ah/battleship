require 'minitest/autorun'
require 'minitest/pride'

class PlayerTest < Minitest::Test

def test_player_exists
  player = Player.new(name)
  assert_instance_of Player, player
end

end
