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
    lt_players = []
        if @roster.player.contract_length > 24
    end
end