class Computer
atter_accessor :computer_grid

  def initialize
    @computer_gird = Grid.new(ships)
    ship1 = Ship.new(2, ["A1", "B1"])
    ship2 = Ship.new(2, ["D2", "D3"])
    super([ ship1, ship2])
  end

end
