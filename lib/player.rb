require "./lib/human.rb"
require "./lib/computer.rb"

class Player
  attr_reader :human_player, :computer_player

  def initialize
    @human_player = Human.new
    @computer_player = Computer.new
  end

  def places_ship

  end

  def fires_missles

  end

end
