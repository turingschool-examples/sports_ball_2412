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
        @roster.sum {|player| player.total_cost}
    end

    def details
        {
            "total_value" => total_value,
            "player_count" => player_count
        }
    end

    def average_cost_of_player
        value_array = (total_value/player_count).to_s.split('').reverse()
        value_string = ""

        value_array.size.times {|index| value_array.insert(index + 3, ',') if index % 4 == 0}
        value_array.pop if value_array.last == ','
        
        value_array.reverse.each {|char| value_string << char}
        "$#{value_string}"
    end

    def players_by_last_name
        last_names_string = ""
        last_names = @roster.map {|player| player.last_name}.sort 
        last_names.each {|name| last_names_string << "#{name}, "}
        last_names_string.chop.chop
    end
end