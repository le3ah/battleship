class Computer

attr_reader :random_sort_ship_1, :random_sort_ship_2
  def initialize
  @computer_grid = ["A1", "A2", "A3", "A4",
                  "B1", "B2", "B3", "B4",
                  "C1", "C2", "C3", "C4",
                  "D1", "D2", "D3", "D4"]
  @computer_ship_1 = [@computer_ship_coordinate_1, @computer_ship_coordinate_2]
  end

  def random_sort_ship_1
    @computer_ship_coordinate_1 = @computer_grid.shuffle.pop
  end

  def create_new_grid
    if @computer_ship_coordinate_1 == "A1"
      @new_grid =["A2","B1"]
    elsif @computer_ship_coordinate_1 == "A2"
      @new_grid = ["A1", "B2", "A3"]
    elsif @computer_ship_coordinate_1 == "A3"
      @new_grid = ["A2", "B3", "A4"]
    elsif @computer_ship_coordinate_1 == "A4"
      @new_grid = ["A3", "B4"]
    elsif @computer_ship_coordinate_1 == "B1"
      @new_grid = ["A1", "B2", "C1"]
    elsif @computer_ship_coordinate_1 == "B2"
      @new_grid = ["A2", "B1", "B3", "C2"]
    elsif @computer_ship_coordinate_1 == "B3"
      @new_grid = ["A3", "B2", "B4", "C3"]
    elsif @computer_ship_coordinate_1 == "B4"
      @new_grid = ["A4", "B3", "C4"]
    elsif @computer_ship_coordinate_1 == "C1"
      @new_grid = ["B1", "C2", "D1"]
    elsif @computer_ship_coordinate_1 == "C2"
      @new_grid = ["B2", "C1", "C3", "D2"]
    elsif @computer_ship_coordinate_1 == "C3"
      @new_grid = ["B3", "C2", "C4", "D3"]
    elsif @computer_ship_coordinate_1 == "C4"
      @new_grid = ["B4", "C3", "D4"]
    elsif @computer_ship_coordinate_1 == "D1"
      @new_grid = ["C1", "D2"]
    elsif @computer_ship_coordinate_1 == "D2"
      @new_grid = ["C2", "D1", "D3"]
    elsif @computer_ship_coordinate_1 == "D3"
      @new_grid = ["C3", "D2", "D4"]
    elsif @computer_ship_coordinate_1 == "D4"
      @new_grid = ["C4", "D3"]
    end
    @new_grid
  end

  def random_sort_ship_2
    @computer_ship_coordinate_2 = @new_grid.shuffle.pop
  end

  def second_ship_coordinate_1
    loop do
      @computer_ship_2_coordinate_1 = @computer_grid.shuffle.pop
      if @computer_ship_2_coordinate_1 != @computer_ship_coordinate_1 && @computer_ship_2_coordinate_1 != @computer_ship_coordinate_2
          break
      end
    end
    @computer_ship_2_coordinate_1
  end

  def create_second_ship_grid
    if @computer_ship_2_coordinate_1 == "A1"
      @second_ship_grid =["A2","B2"]
    elsif @computer_ship_2_coordinate_1 == "A2"
      @second_ship_grid = ["A1", "B2", "A3"]
    elsif @computer_ship_2_coordinate_1 == "A3"
      @second_ship_grid = ["A2", "B3", "A4"]
    elsif @computer_ship_2_coordinate_1 == "A4"
      @second_ship_grid = ["A3", "B4"]
    elsif @computer_ship_2_coordinate_1 == "B1"
      @second_ship_grid = ["A1", "B2", "C1"]
    elsif @computer_ship_2_coordinate_1 == "B2"
      @second_ship_grid = ["A2", "B1", "B3", "C2"]
    elsif @computer_ship_2_coordinate_1 == "B3"
      @second_ship_grid = ["A3", "B2", "B4", "C3"]
    elsif @computer_ship_2_coordinate_1 == "B4"
      @second_ship_grid = ["A4", "B3", "C4"]
    elsif @computer_ship_2_coordinate_1 == "C1"
      @second_ship_grid = ["B1", "C2", "D1"]
    elsif @computer_ship_2_coordinate_1 == "C2"
      @second_ship_grid = ["B2", "C1", "C3", "D2"]
    elsif @computer_ship_2_coordinate_1 == "C3"
      @second_ship_grid = ["B3", "C2", "C4", "D3"]
    elsif @computer_ship_2_coordinate_1 == "C4"
      @second_ship_grid = ["B4", "C3", "D4"]
    elsif @computer_ship_2_coordinate_1 == "D1"
      @second_ship_grid = ["C1", "D2"]
    elsif @computer_ship_2_coordinate_1 == "D2"
      @second_ship_grid = ["C2", "D1", "D3"]
    elsif @computer_ship_2_coordinate_1 == "D3"
      @second_ship_grid = ["C3", "D2", "D4"]
    elsif @computer_ship_2_coordinate_1 == "D4"
      @second_ship_grid = ["C4", "D3"]
    end
    @second_ship_grid
  end

  def random_sort_ship_2_coordinate_2
    loop do
      @computer_ship_2_coordinate_2 = @second_ship_grid.shuffle.pop
      if @computer_ship_2_coordinate_2 != @computer_ship_coordinate_1 && @computer_ship_2_coordinate_2 != @computer_ship_coordinate_2 && @computer_ship_2_coordinate_2 != @computer_ship_2_coordinate_1
        break
      end
    end
  end
def move_vertically
  index_1 = @computer_grid.index(@computer_ship_2_coordinate_1)
  index_2 = @computer_grid.index(@computer_ship_2_coordinate_2)
end
def random_sort_ship_2_coodrinate_3
end
  # map through index position of grid 1 & 2
end
