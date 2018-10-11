class Ship
  attr_reader :coordinates

  def initialize(size, coordinates)
    @size = size
    @coordinates = coordinates
  end
end
