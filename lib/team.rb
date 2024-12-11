
class Team
    attr_reader :name, :location, :roster, :player_count

    def initialize(name, location)
        @name = name
        @location = location
        @roster = []
        @player_count = 0
        @short_term_players = []
        @long_term_players = []
    end

    def add_player(player)
        new_player = Player.new(@full_name, @monthly_cost, @contract_length)
        @roster << new_player
        @player_count += 1
    end

    def short_term_player?
        new_player = Player.new(@full_name, @monthly_cost, @contract_length)

        if @contract_length < 24
            @short_term_players << new_player
        end
        
    end

    def long_term_player?
        new_player = Player.new(@full_name, @monthly_cost, @contract_length)

        if @contract_length > 24
            @long_term_players << new_player
        end
    end

    def team_total_value
        @roster.monthly_cost
        #i know this is not correct, running out of time
    end
    
end