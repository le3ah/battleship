require "./lib/grid.rb"
require "./lib/ship.rb"

class Player
  attr_reader :grid

  def initialize
    @grid = Grid.new(ships)
  end

  def places_ship

  end

  def fires_missles

  end

end
