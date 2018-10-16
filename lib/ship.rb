

class Ship
  attr_reader :coordinates

  def initialize(player, coordinates)
    @player= player
    @coordinates = coordinates
  end

  def get_ship_size
    @coordinates.count
  end
end
