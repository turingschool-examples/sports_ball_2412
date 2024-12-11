require './lib/player'

class Team
    attr_reader :team, :city

    def initialize(team, city)
        @team = []
        @city = city
        @long_term_players = []
        @short_term_players = []
    end

    def roster
        roster = @team
    end

    def player_count
        player_count = @team.count
    end

    def add_player(player)
       
        @team << player
    end

    def long_term_players(player)
        
            if player(@contract_length) > 24
                @long_term_players << player
            end
        end

    def short_term_players
        short_term_player = Player(@name, @monthly_cost, @contract_length)
        if short_term_player[2] <= 24
            @short_term_players << short_term_player
        end
    end
end

