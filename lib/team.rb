require './lib/player'

class Team
    attr_reader :team, :city 
    attr_accessor :long_term_players, :short_term_players
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
        @team.length.times do |check|
            check.player.each.contract_length
                if contract_length > 24
                    @long_term_players << player
                end
            end
    end

    def short_term_players

        @short_term_players << short_term_player
        
    end

    def total_value
    end
end

