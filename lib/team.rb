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
        #Since find_all enumerable returns array, we only need one line if written compactly (see refactor below)!
        # long_term_players = @roster.find_all do |player|
        #     player.contract_length > 24
        # end

        # return long_term_players

        #Refactor:
        @roster.find_all { |player| player.contract_length > 24 }
    end

    def short_term_players()
        #Return array of all players in roster with contract length <= 24 months
        #NOTE: this is technically the set of players NOT returned by long_term_players();
        #this means I could save computational time by figuring it out above, but I'd need to store additional variables (memory)...
        # short_term_players = @roster.find_all do |player|
        #     player.contract_length <= 24
        # end

        # return short_term_players

        #Refactor:
        @roster.find_all { |player| player.contract_length <= 24 }
    end

    def total_value()
        #Compute the total value of all players (based on each player's monthly cost and contract length)
        #I feel like there's a quicker enumerable here, but .each will certainly work for now.
        total_value = 0
        @roster.each do |player|
            total_value += player.monthly_cost * player.contract_length
        end

        #Refactor: I forgot I already defined a Player method to compact-ify this:
        total_cost()

        return total_value
    end

end
