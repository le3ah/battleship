class Grid
 attr_reader :rows
#determine how you are going to store the shot information on the board
#and how the board is printed with the shot information
#consider making the board structure an instance variable to hold the data for shots

def board
  puts "============"
puts ". 1 2 3 4"

@rows = { "row_2" => {
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

empty_grid = rows.keys.each do |key|
puts rows[key].values.join
end

puts "============
"

end
end
