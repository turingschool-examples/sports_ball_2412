class Team 
    attr_reader :roster, :player_count, :add_player
    def initialize(team_name, city)
        team_name = team_name
        city = city 
        @roster = []
        @player_count = [0]
    end

    def add_player(player)
        @roster << player
    end

    def player_count
        roster.count
    end



end
