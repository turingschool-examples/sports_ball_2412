class Team
    attr_reader :team_name, :city, :roster

    def initialize(team_name, city)
        @team_name = team_name
        @city = city
        @roster = []
    end

    def roster

        @roster

    end

    def player_count

        @roster.length

    end

    def add_player(player)

        @roster << player

    end

    def long_term_players

        long_term_players = []

        roster.find_all do |player|
            if player.contract_length > 24
                long_term_players << player
            end
        end

        long_term_players

    end

    def short_term_players

        short_term_players = []

        roster.find_all do |player|
            if player.contract_length <= 24
                short_term_players << player
            end
        end

        short_term_players

    end

    def total_value

        cost_array = []

        roster.each do |player|
            cost_array << player.total_cost
        end

        cost_array.sum

    end

    def details

        details = {}
        details["total_value"] = total_value
        details["player_count"] = player_count

        details
    end

    def average_cost_of_player

        average_cost = "$" + (total_value / player_count).to_s

    end

    # def players_by_last_name
    #     alphabetized_by_last = roster.
    # end
end