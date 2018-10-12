class Computer

  def initialize
    @max_size = 4
    @index_x = {0 => "A", 1 => "B", 2 => "C", 3 => "D"}
    @index_y = {0 => 1, 1 => 2, 2 =>3, 3 => 4}
  end

  def computer_ship_1_coordinate_1
    @index_x_1 = Random.rand(@max_size)
    @index_y_1 = Random.rand(@max_size)
    @computer_ship_1_coordinate_1 = [@index_x_1, @index_y_1]
  end

  def pick_change_coordinate
    @movement = ["change_x", "change_y"].shuffle.pop
  end

  def move_coordinates
    if @movement == "change_x"
      @index_y_2 = @index_y_1
      if @index_x_1 == 0
        @index_x_2 = 1
      elsif @index_x_1 == 3
        @index_x_2 = 2
      elsif @index_x_1 == 1 && @index_x_1 == 2
        change_x = [-1,1].shuffle.pop
        @index_x_2 = change_x + @index_x_1
      end
    else # @movement == "change_y"
      @index_x_2 = @index_x_1
      if @index_y_1 == 0
        @index_y_2 = 1
      elsif @index_y_1 == 3
        @index_y_2 = 2
      elsif @index_y_1 == 1 && @index_y_1 == 2
        change_y = [-1,1].shuffle.pop
        @index_y_2 = change_y + @index_y_1
      end
    end
    @computer_ship_1_coordinate_2 = [@index_x_2, @index_y_2]
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
