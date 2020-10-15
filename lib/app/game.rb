

#Déroulement de la partie

class Game
    attr_accessor :player1, :player2

    def initialize
        @player1 = Player.new(ask_name, "x")
        @player2 = Player.new(ask_name, "o")
        @game_board = Board.new

    end



    def ask_name
        puts "Salut, quel est ton nom ?"
        name = gets.chomp
    end

    def play_each_turn(player)
        puts "Hello #{player.name}, c'est à toi de jouer"
        ask_place(player)
    end

    def ask_place(player)
    puts "quel emplacement souhaites-tu ?"
    @game_board.show
    print ">"
    case_choosen = gets.chomp

    case case_choosen
        when "A1"
            if @game_board.is_playable?(0) == true

                @game_board.set_case_value(0, player.symbol)
            else 
                puts "déjà pris!"
                ask_place(player)
            end

        when "A2"
             if @game_board.is_playable?(1) == true

                @game_board.set_case_value(1, player.symbol)
            else 
                puts "déjà pris!"
                ask_place(player)
            end
        when "A3"
             if @game_board.is_playable?(2) == true

                @game_board.set_case_value(2, player.symbol)
            else 
                puts "déjà pris!"
                ask_place(player)
            end
        when "B1"
             if @game_board.is_playable?(3) == true

                @game_board.set_case_value(3, player.symbol)
            else 
                puts "déjà pris!"
                ask_place(player)
            end
        when "B2"
            if @game_board.is_playable?(4) == true

                @game_board.set_case_value(4, player.symbol)
            else 
                puts "déjà pris!"
                ask_place(player)
            end
        when "B3" 
             if @game_board.is_playable?(5) == true

                @game_board.set_case_value(5, player.symbol)
            else 
                puts "déjà pris!"
                ask_place(player)
            end
        when "C1"
             if @game_board.is_playable?(6) == true

                @game_board.set_case_value(6, player.symbol)
            else 
                puts "déjà pris!"
                ask_place(player)
            end
        when "C2"
             if @game_board.is_playable?(7) == true

                @game_board.set_case_value(7, player.symbol)
            else 
                puts "déjà pris!"
                ask_place(player)
            end
        when "C3"
             if @game_board.is_playable?(8) == true

                @game_board.set_case_value(8, player.symbol)
            else 
                puts "déjà pris!"
                ask_place(player)
            end
        else 
            #system "clear"
            puts "Ceci est une erreur, merci de choisir de faire ton choix entre A1 et C3, ;)"
            ask_place(player)
        end
  
    end

    def is_still_ongoing
        if @game_board.victory == false or @game_board.draw_game == false
            return true
        end
    end

    def break_when
      if @game_board.victory == true
         return true
      else
        return false
      end  
  end

    def win_announcement(player)
        if @game_board.victory == true
            puts "Victoire, #{player.name}, tu as gagné"
            gets.chomp
            play_again
        end

    end

    def play_again
        puts "veux tu rejouer?"
        puts "oui ou non"
        print ">"
        choice = gets.chomp
        if choice == "oui"
            @game_board.reset
        else
            puts "bah casses toi alors!"
            return
        end
    end

    # def draw_game_announcement
    #     if @game_board.draw_game == true 
    #         puts "Le jeu est terminé sur un match nul ! too bad !!"
    #     end
    # end
end

