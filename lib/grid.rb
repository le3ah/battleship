class Grid

def board
  puts "============"
puts ". 1 2 3 4"

rows = { "row_2" => {
 "A" => "A",
 "A1" => " ",
 "A2" => " ",
 "A3" => " ",
 "A4" => " "
} ,

"row_3" =>
{
 "B" => "B",
 "B1" => " ",
 "B2" => " ",
 "B3" => " ",
 "B4" => " "
},
"row_4" =>
{
 "C" => "C",
 "C1" => " ",
 "C2" => " ",
 "C3" => " ",
 "C4" => " "
},
"row_5" =>
{
 "D" => "D",
 "D1" => " ",
 "D2" => " ",
 "D3" => " ",
 "D4" => " "
}
}

grid = rows.keys.each do |key|
puts rows[key].values.join
end

puts "============"

end
end

computer_grid = Grid.new
computer_grid.board
