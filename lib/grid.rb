class Grid

def board
    puts "============"
    puts ". 1 2 3 4"
    puts "A"
    puts "B"
    puts "C"
    puts "D"
        # @board = Hash.new
        # ('A'..'D').each do |letter|
        #     (1..4).each do |i|
        #         @board["#{letter}#{i}"] = "#{letter} "
        #         print @board["#{letter}#{i}"]
        #     end
        #     puts
        # end
        puts "============"
end
end

computer_grid = Grid.new
computer_grid.board
