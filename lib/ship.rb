class Ship
  attr_reader :coordinates

  def initialize(size, coordinates)
    @size = size
    @coordinates = coordinates
  end

  def validate_ships_cannot_overlap
     ship2.coordinates.each do |coordinate|
         ship1.include?(coordinate)
         puts "Your previous ship is in that spot, pick another ship position"
        # here I need to call the method that prompts for new coordinates for the second ship
     end
  end

  def validate_that_ship_coordinates_dont_wrap_around

  end
end
