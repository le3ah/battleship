

class Ship
  attr_reader :coordinates

  def initialize(player, coordinates)
    @player= player
    @coordinates = coordinates
    @number_hits = 0
  end
  def record_hits
    @number_hits += 1
  end

  def hit_number
    @number_hits
  end

  def get_ship_size
    @coordinates.count
  end

  def check_sunk
    get_ship_size == hit_number
  end

end
