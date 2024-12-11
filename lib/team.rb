# use tdd to create a team class

require 'rspec' #connect to rspec gem
require './lib/team' #makes the player class available to the test

class Team
    attr_reader :name, :players

    def initialize(name, players)
        @name = name
        @players = players
    end
end