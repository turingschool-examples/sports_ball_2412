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

    def long_term_players()
        #Return array of all players in roster with contract length > 24 months
        #Since find_all enumerable returns array, we only need one line if written compactly!
        long_term_players = @roster.find_all do |player|
            player.contract_length > 24
        end

        return long_term_players
    end

    def short_term_players()
        #Return array of all players in roster with contract length <= 24 months
        #NOTE: this is technically the set of players NOT returned by long_term_players();
        #this means I could save computational time by figuring it out above, but I'd need to store additional variables (memory)...
        short_term_players = @roster.find_all do |player|
            player.contract_length <= 24
        end

        return short_term_players
    end
end
