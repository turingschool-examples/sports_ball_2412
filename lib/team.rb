
class Team
    attr_reader :roster, :player_count, :players

    def initialize(team1, team2)
        @roster = []
        @player_count = roster.count
    end

    def add_player(players)
        @roster << players
    end
end
