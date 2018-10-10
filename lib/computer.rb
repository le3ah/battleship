class Computer

  def initialize
  @computer_grid = ["A1", "A2", "A3", "A4",
                  "B1", "B2", "B3", "B4",
                  "C1", "C2", "C3", "C4",
                  "D1", "D2", "D3", "D4"]
  end
  def random_sort_ship_1
    @computer_ship_coordinate_1 = @computer_grid.shuffle.pop
  end

  def random_sort_ship_2
    if @computer_ship_coordinate_1 == "A1"
      @new_grid =["A2","B2"]
    elsif computer_ship_coordinate_1 == "A2"
      @new_grid = ["A1", "B2", "A3"]
    elsif computer_ship_coordinate_1 == "A3"
      @new_grid = ["A2", "B3", "A4"]
    elsif computer_ship_coordinate_1 == "A4"
      @new_grid = ["A3", "B4"]
    elsif computer_ship_coordinate_1 == "B1"
      @new_grid = ["A1", "B2", "C1"]
    elsif computer_ship_coordinate_1 == "B2"
      @new_grid = ["A2", "B1", "B3", "C2"]
    elsif computer_ship_coordinate_1 == "B3"
      @new_grid = ["A3", "B2", "B4", "C3"]
    elsif computer_ship_coordinate_1 == "B4"
      @new_grid = ["A4", "B3", "C4"]
    elsif computer_ship_coordinate_1 == "C1"
      @new_grid = ["B1", "C2", "D1"]
    elsif computer_ship_coordinate_1 == "C2"
      @new_grid = ["B2", "C1", "C3", "D2"]
    elsif computer_ship_coordinate_1 == "C3"
      @new_grid = ["B3", "C2", "C4", "D3"]
    elsif computer_ship_coordinate_1 == "C4"
      @new_grid = ["B4", "C3", "D4"]
    elsif computer_ship_coordinate_1 == "D1"
      @new_grid = ["C1", "D2"]
    elsif computer_ship_coordinate_1 == "D2"
      @new_grid = ["C2", "D1", "D3"]
    elsif computer_ship_coordinate_1 == "D3"
      @new_grid = ["C3", "D2", "D4"]
    elsif computer_ship_coordinate_1 == "D4"
      @new_grid = ["C4", "D3"]
    end
    @computer_ship_coordinate_2 = @new_grid.shuffle.pop
  end
end
