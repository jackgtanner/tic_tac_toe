
class Game_Board
    @@playerMarker = ""
    def initialize()
        @gameSpaces = Array.new(9) {|i| (i+1).to_s }
        @board = "\n   |   |   \n #{@gameSpaces[0]} | #{@gameSpaces[1]} | #{@gameSpaces[2]} \n___|___|___\n   |   |   \n #{@gameSpaces[3]} | #{@gameSpaces[4]} | #{@gameSpaces[5]} \n___|___|___\n   |   |   \n #{@gameSpaces[6]} | #{@gameSpaces[7]} | #{@gameSpaces[8]} \n   |   |   \n\n"
    end

    def board_display()
        puts @board
    end

    def update_board (choice)
        @gameSpaces.map!{ |x| x === choice ? @@playerMarker : x }
        @board = "\n   |   |   \n #{@gameSpaces[0]} | #{@gameSpaces[1]} | #{@gameSpaces[2]} \n___|___|___\n   |   |   \n #{@gameSpaces[3]} | #{@gameSpaces[4]} | #{@gameSpaces[5]} \n___|___|___\n   |   |   \n #{@gameSpaces[6]} | #{@gameSpaces[7]} | #{@gameSpaces[8]} \n   |   |   \n\n"
        board_display
    end
end

class Player < Game_Board
    def initialize (marker)
        @@playerMarker = marker
    end
    


end





    puts "\nWelcome to Tic-Tac-Toe\n\nIn this game you'll be playing against a computer\n\n"
    
    print "Would you like to be X's or O's??  "
    marker = gets.chomp
    new_player = Player.new(marker)

    board = Game_Board.new()
    board.board_display
    
    
    puts "\nPlace your marker on the board by choosing a number from 1-9.\n\n"
    choice  = gets.chomp
    board.update_board(choice)

    puts "Time for the Computer's turn!\n\n"
    




