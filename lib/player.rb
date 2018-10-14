require "./lib/grid.rb"
require "./lib/human.rb"
require "./lib/computer.rb"

class Player
  attr_reader :grid

  def initialize
    @human_player = Human.new
    @computer_player = Computer.new
  end

  def places_ship

  end

  def fires_missles

  end

end
