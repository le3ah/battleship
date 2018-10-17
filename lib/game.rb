require 'pry'
require './lib/computer_playground'
require './lib/human'
require './lib/grid'
class Game

  def initialize
    @computer = Computer.new
    @human = Human.new
  end

  def welcome
    puts "Welcome to BATTLESHIP"
    want_to_play
  end

  def want_to_play
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    puts ">"
    @answer = gets.chomp
    answer_output
  end

  def answer_output
    if @answer == "p"
      puts "Let's play!"
      sleep(2.0)
      player_computer_places_ships
      true
    elsif @answer == "i"
      puts "Battleship is a game of war. Each player will place two ships on the grid."
      puts "One ship is 2-units long and the other is 3-units long."
      puts "Each player will then take turns firing missiles at each other until both ships on the opponent's board are sunk."
      puts "The player whose ships survive the attack is the winner."
      want_to_play
      true
    elsif @answer == "q"
      puts "We're sorry to see you go.  Have a great day!"
      true
    else
      puts "You've entered an invalid command, please try to start the game again."
      sleep(1.0)
      want_to_play
    end
  end

  # def play_game
  #   if !answer_output
  #     puts "You've entered an invalid command, please try to start the game again."
  #     sleep(1.0)
  #     play_game
  #   end
  # end

  def player_computer_places_ships
    ship_1 = @computer.map_ship_1
    ship_2 = @computer.map_ship_2
    computer_grid = Grid.new
     if computer_grid.validate(ship_1, ship_2)
       computer_grid.create_ships("computer", ship_1)
       computer_grid.create_ships("computer", ship_2)
       introduces_grid
       player_human_places_ships
     else
       player_computer_places_ships
     end
  end

  def introduces_grid
    puts  "I have laid out my ships on the grid.
    You now need to layout your two ships.
    The first is two units long and the
    second is three units long."
    puts  "The grid has A1 at the top left and D4 at the bottom right and looks like this:
    "
    # puts @human_grid.prints_board
  end
  def player_human_places_ships
    create_human_grid
    puts  "Enter the squares for the two-unit ship:
     please use a capital letter and number separated by a space followed by another capital letter and number like this: A1 A2"
    puts ">"
      @human_coordinates_ship_1 = gets.chomp.split
      @human_grid.create_ships("human", @human_coordinates_ship_1)
    puts "Now place your three-unit ship:
    please use a capital letter and number separates by a space followed by another capital letter and number like this: A1 A2 A3"
      @human_coordinates_ship_2 = gets.chomp.split
      @human_grid.create_ships("human", @human_coordinates_ship_2)
      if @human_grid.validate(@human_coordinates_ship_1,  @human_coordinates_ship_2 )
        @human_grid.create_ships("human", @human_coordinates_ship_1)
        @human_grid.create_ships("human", @human_coordinates_ship_2)
        sleep (1.0)
        @human_grid.prints_board
      else
        puts "Coordinates were invalid.  Remember they cannot overlap."
        puts "The request-ship sequence will now begin again."
        sleep(1.0)
        player_human_places_ships
      end
  end

  def create_human_grid
    @human_grid = Grid.new
  end

  def create_computer_grid
    @computer_grid = Grid.new
  end

  def start_human_shots
    puts "Where do you want to hit? Enter 1 coordinate"
    puts ">"
     @player_shot = gets.chomp.upcase
     #check if it is a valid shot
     #check if it is a new shot or it
     # has already been used
     human_hit = @computer_grid.hit?(@player_shot)
     if human_hit
       @computer_grid.record_hit(@player_shot)
     else

     end


  end

  def start_computer_shots
    #get random shot from computer
  end


  def is_it_a_hit_or_a_miss
    if get_all_computer_ship_coordinates.flatten.include?(@player_shot)
      puts "Your shot hit"
    else
      puts "Your shot missed"
    end
  end
end
game = Game.new
game.welcome
# game.want_to_play
# game.answer_output
# game.play_game
