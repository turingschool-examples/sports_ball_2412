class Team
    attr_reader :roster, :player_count

    def initialize(name, city)
        @roster = []
    end

    def player_count
        @roster.size
    end

    def add_player(player)
        @roster << player
    end
end