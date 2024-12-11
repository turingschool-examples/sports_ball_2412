class Team
    attr_reader :roster

    def initialize(name, city)
        @roster = []
    end

    def player_count
        @roster.size
    end

    def add_player(player)
        @roster << player
    end

    def long_term_players
        @roster.find_all {|player| player.contract_length > 24}
    end

    def short_term_players
        @roster.find_all {|player| player.contract_length <= 24}
    end

    def total_value
        value = 0

        @roster.each {|player| value += player.total_cost}
        value
    end

    def deatils
        {
            "total_value" => total_value,
            "player_count" => player_count
        }
    end
end