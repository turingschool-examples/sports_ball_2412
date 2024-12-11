class Team
    attr_reader :roster

    def initialize(name, location)
        @name = name
        @location = location
        @roster = []                #Roster of the players (class Player)

    end

    def add_player(new_player)
        roster << new_player
    end

    def player_count()
        roster.length
    end
end
