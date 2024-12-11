class Player
    attr_reader :name, :position, :team

    def initialize(name, position, team)
        @name = name
        @position = position
        @team = team
    end

    def display_info
        "#{name} plays as a #{position} for #{team}."
    end
end