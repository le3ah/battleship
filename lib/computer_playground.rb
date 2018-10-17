class Computer

attr_reader :map_ship_1, :map_ship_2, :index_x, :index_y, :computer_fires_missile
  def initialize
    @max_size = 4
    @index_x = ["A","B","C","D"]
    @index_y = ["1", "2", "3", "4"]
  end

  def map_ship_1
    pick_change_coordinate
    computer_ship_1_coordinate_1
    pick_coordinate_2
    @computer_ship_1 = [[@index_x[@index_x_1], @index_y[@index_y_1]].join, [@index_x[@index_x_2], @index_y[@index_y_2]].join]
  end

  def map_ship_2
    pick_change_coordinate
    computer_ship_1_coordinate_1
    pick_coordinate_2
    ship_2_coordinate_1
    ship_2_coordinate_2
    pick_coordinate_3(ship_2_coordinate_1[0], ship_2_coordinate_2[0])
    pick_coordinate_3(ship_2_coordinate_1[1], ship_2_coordinate_2[1])
    ship_2_coordinate_3
    @computer_ship_2 = [[@index_x[@index_x_3], @index_y[@index_y_3]].join,[@index_x[@index_x_4], @index_y[@index_y_4]].join, [@index_x[@index_x_5], @index_y[@index_y_5]].join]
  end

  def computer_fires_missile
  @index_x.product(@index_y).shuffle.pop.join
  end

  private

  def computer_ship_1_coordinate_1
    @index_x_1 = Random.rand(@max_size)
    @index_y_1 = Random.rand(@max_size)
    @computer_ship_1_coordinate_1 = [@index_x_1, @index_y_1]
  end

  def pick_change_coordinate
    @movement = ["change_x", "change_y"].sample
  end

  def second_coordinate(first)
    if first == 0
      second = 1
    elsif first == 3
      second = 2
    else # first == 1 || first == 2
      change_x = [-1,1].sample
      second = change_x + first
    end
  end

  def pick_coordinate_2
    if @movement == "change_x"
      @index_y_2 = @index_y_1
      @index_x_2 = second_coordinate(@index_x_1)
    else # @movement == "change_y"
      @index_x_2 = @index_x_1
      @index_y_2 = second_coordinate(@index_y_1)
     end
     @computer_ship_1_coordinate_2 = [@index_x_2, @index_y_2]
  end

  def ship_2_coordinate_1
    loop do
      @index_x_3 = @index_x.index(@index_x.sample)
      @index_y_3 = @index_y.index(@index_y.sample)
      @computer_ship_2_coordinate_1 = [@index_x_3, @index_y_3]
      if @computer_ship_2_coordinate_1 != @computer_ship_1_coordinate_1 &&
        @computer_ship_2_coordinate_1 != @computer_ship_1_coordinate_2
        break
      end
    end
    @computer_ship_2_coordinate_1
  end

  def ship_2_coordinate_2
      if @movement == "change_x"
        @index_y_4 = @index_y_3
        @index_x_4 = second_coordinate(@index_x_3)
      else
        @index_x_4 = @index_x_3
        @index_y_4 = second_coordinate(@index_y_3)
      end
        @computer_ship_2_coordinate_2 = [@index_x_4, @index_y_4]
        @computer_ship_2_coordinate_2
    end

    def pick_coordinate_3(third, fourth)

      if fourth == 3
        fifth = 1
      elsif third == 3
        fifth = 1
      elsif fourth == 0
        fifth = 2
      elsif third == 0
        fifth = 2
      else fifth = [0, 3].sample
      end
    end

  def ship_2_coordinate_3
        if @index_x_3 == @index_x_4
          @index_x_5 = @index_x_3
          @index_y_5 = pick_coordinate_3(@index_y_3, @index_y_4)
        else @index_y_5 = @index_y_3
          @index_x_5 = pick_coordinate_3(@index_x_3, @index_x_4)
        end
      @computer_ship_2_coordinate_3 = [@index_x_5, @index_y_5]
   end
end
