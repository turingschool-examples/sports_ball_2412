# use tdd to create a team class

require 'rspec' #connect to rspec gem
require './lib/player' #makes the player class available to the test
require 'pry'

class Team
  attr_reader :name, :location, :roster

  def initialize(name, location)
    @name = name
    @location = location
    @roster = []
  end

  def add_player(player)
    @roster << player
  end

  def player_count
    @roster.count
  end

  def to_s
    "Team: #{@name}, Location: #{@location}"
  end
end
