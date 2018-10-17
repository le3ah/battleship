require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid'
require './lib/human'
require './lib/computer_playground'

class GridTest < Minitest::Test

  def test_grid_exists
    human_grid = Grid.new
    assert_instance_of Grid, human_grid
  end

  def test_it_tracks_human_ships
    grid = Grid.new
    human_ship_1 = grid.create_ships("human", ["A1","A2","A3"])
    human_ship_2 = grid.create_ships("human", ["C1","C2"])
    grid.create_ships("computer", ["C1","C2","C3"])
    assert_equal [human_ship_1, human_ship_2] ,grid.all_human_ships
  end
  
  def test_it_tracks_computer_ships
    grid = Grid.new
    human_ship = grid.create_ships("human", ["A1","A2","A3"])
    computer_ship_1 = grid.create_ships("computer", ["C1","C2","C3"])
    computer_ship_2 = grid.create_ships("computer", ["A1","A2"])
    assert_equal [computer_ship_1, computer_ship_2] ,grid.all_computer_ships
  end

  def test_can_get_all_computer_ship_coordinates
    grid = Grid.new
    computer_ship_1 = grid.create_ships("computer", ["C1","C2","C3"])
    computer_ship_2 = grid.create_ships("computer", ["A1","A2"])
    assert_equal ["C1", "C2","C3","A1", "A2"], grid.get_all_computer_ship_coordinates
  end

  def test_computer_it_hit?
    computer_grid = Grid.new
    computer_ship_1 = computer_grid.create_ships("computer", ["C1","C2","C3"])
    computer_ship_2 = computer_grid.create_ships("computer", ["A1","A2"])
    assert_equal true , computer_grid.hit?("A1")
    assert_equal false, computer_grid.hit?("D1")

  def test_coordinates_on_grid
    ai_grid = Grid.new
    computer = Computer.new
    ship_1 = computer.map_ship_1
    ship_2 = computer.map_ship_2
    assert_equal true, ai_grid.ships_on_grid?(ship_1)
    assert_equal true, ai_grid.ships_on_grid?(ship_2)
  end

  def test_ship_1_is_vertical_or_horizontal
    ai_grid = Grid.new
    computer = Computer.new
    ship_1 = computer.map_ship_1
    assert_equal true, ai_grid.ship_1_is_vertical_or_horizontal?(ship_1)
  end

  def test_ship_2_is_vertical_or_horizontal
    ai_grid = Grid.new
    computer = Computer.new
    ship_2 = computer.map_ship_2
    assert_equal true, ai_grid.ship_2_is_vertical_or_horizontal?(ship_2)
  end

  def test_ships_are_not_diagonal
    ai_grid = Grid.new
    computer = Computer.new
    ship_1 = computer.map_ship_1
    ship_2 = computer.map_ship_2
    assert_equal true, ai_grid.ships_not_diagonal?(ship_1)
    assert_equal true, ai_grid.ships_not_diagonal?(ship_2)
  end

  def test_ships_cannot_wrap
    ai_grid = Grid.new
    computer = Computer.new
    ship_1 = computer.map_ship_1
    ship_2 = computer.map_ship_2
    assert_equal true, ai_grid.ships_cannot_wrap?(ship_1)
    assert_equal true, ai_grid.ships_cannot_wrap?(ship_2)
  end

  def test_ships_are_not_equal
    ai_grid = Grid.new
    computer = Computer.new
    ship_1 = computer.map_ship_1
    ship_2 = computer.map_ship_2
    assert_equal true, ai_grid.ships_cannot_overlap?(ship_1, ship_2)
  end

  def test_all_coordinates_pass_validation
    ai_grid = Grid.new
    computer = Computer.new
    ship_1 = computer.map_ship_1
    ship_2 = computer.map_ship_2
    ai_grid.ships_on_grid?(ship_1)
    ai_grid.ships_on_grid?(ship_2)
    ai_grid.coordinate_split(ship_1)
    ai_grid.coordinate_split(ship_2)
    ai_grid.ship_1_is_vertical_or_horizontal?(ship_1)
    ai_grid.ship_2_is_vertical_or_horizontal?(ship_2)
    ai_grid.ships_not_diagonal?(ship_1)
    ai_grid.ships_not_diagonal?(ship_2)
    ai_grid.ships_cannot_overlap?(ship_1, ship_2)
    assert_equal "Ship coordinates are valid.", ai_grid.validate(ship_1, ship_2)
  end

end
