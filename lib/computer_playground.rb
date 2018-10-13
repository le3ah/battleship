class Computer

  def initialize
    @max_size = 4
    @index_x = ["A","B","C","D"]
    @index_y = [1, 2, 3, 4]
  end

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
    loop do
      if @movement == "change_x"
        @index_y_4 = @index_y_3
        @index_x_4 = second_coordinate(@index_x_3)
      else
        @index_x_4 = @index_x_3
        @index_y_4 = second_coordinate(@index_y_3)
      end
      @computer_ship_2_coordinate_2 = [@index_x_4, @index_y_4]
      if @computer_ship_2_coordinate_2 != @computer_ship_1_coordinate_1 &&
        @computer_ship_2_coordinate_2 != @computer_ship_1_coordinate_2 &&
        @computer_ship_2_coordinate_2 != @computer_ship_2_coordinate_1
        break
      end
    end
    @computer_ship_2_coordinate_2
  end

#   def computer_ship_1_coordinate_2
#     if index_x_1 == 0 && index_y_1 == 0
#       x_movement = [0, 1].shuffle.pop
#       if x_movement == 0
#         y_movement = 1
#       else y_movement = 0
#       end
#     elsif index_x_1 == 3 && index_y_1 == 3
#       x_movement = [-1,0].shuffle.pop
#       if x_movement == 0
#         y_movement = -1
#       else y_movement = 0
#       end
#     end
#
#     if index_x_1 == 0
#         x_movement = [0, 1].shuffle.pop
#     elsif index_x_1 == 3
#         x_movement = [-1, 0].shuffle.pop
#     else x_movement = Random.rand(-1..1)
#     end
#
#     if x_movement == 0
#       y_movement == [-1, 1].shuffle.pop
#     else y_movement == 0
#     end
#     index_x_2 = index_x_1 + x_movement
#     index_y_2 = index_y_1 + y_movement
#     @computer_ship_1_coordinate_2 = [index_x_2, index_y_2]
#
#   end
#   # figure out where index_x_2 needs to be
#   # figure out where index_y_2 needs to be
#   # map coordinates to hash of letters & numbers
# # x = {mapping of numbers to letters}
# # y = (mapping of numbers)
end
