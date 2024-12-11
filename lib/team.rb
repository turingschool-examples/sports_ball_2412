class Team
    attr_reader :team_name, :city, :roster

    def initialize(team_name, city)
        @team_name = team_name
        @city = city
        @roster = []
    end

    def add_player(player)
        @roster << player 
    end

    def player_count
        @roster.count
    end

    def long_term_players
        @roster.select do |player|
            player.contract_length > 24
        end
    end

    def short_term_players
        @roster.select do |player|
            player.contract_length <= 24
        end
    end

    def total_value 
        @roster.sum do |player|
          player.total_cost
        end
    end
end