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
            # total_value += player.monthly_cost * player.contract_length
            total_value += player.total_cost()
        end

        return total_value
    end

    def details()
        #Generate hash of total roster value and # of players
        
        #NOTE: can probably refactor this significantly (at least to make more compact, if nothing else)
        # details_hash = {}

        # details_hash["total_value"] = total_value()
        # details_hash["player_count"] = player_count()

        # return details_hash

        #Refactor:
        { "total_value" => total_value(), "player_count" => player_count() }
    end

    def average_cost_of_player()
        total_value() / player_count()
    end

    def players_by_last_name()
        #Probably the trickiest method here; need to extract last names, sort alphabetically, and concatenate into one string
        
        last_name_array = []
        @roster.each do |player|
            last_name_array << player.last_name()
        end

        #Looks like a simple sort enumerable will work here (assumes alphabetical for strings I think...otherwise I might need sort_by)
        sorted_name_array = last_name_array.sort
        
        #Now concatenate a single string from the array.  Again, I feel like there's a method / enumerable for this purpose...
        # sorted_last_names_string = ""
        # sorted_name_array.each do |name_element|
        #     sorted_last_names_string += "#{name_element}, "
        # end
        # #Remove extra characters ", " at end:
        # return sorted_last_names_string.delete_suffix(", ")

        #Aha - there is a quicker way (of course there is)!
        return sorted_name_array.join(", ")                 #join concatenates each element with the ", " separator between 'em
    end

end
