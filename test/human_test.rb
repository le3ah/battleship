require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/human'

class HumanTest < Minitest::Test
  def test_it_exists
    player = Human.new
    assert_instance_of Human, player
  end
end
