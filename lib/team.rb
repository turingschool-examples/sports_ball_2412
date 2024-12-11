# use tdd to create a team class

require 'rspec' #connect to rspec gem
require './lib/player' #makes the player class available to the test
require 'pry'

class Team
  attr_reader :name, :location, :roster

  def initialize(name, location)
    @name = name
    @location = location
    @roster = [] #roster set to an empty array
  end

  def add_player(player)
    @roster << player #shovel method to add player to the roster
  end

  def player_count
    @roster.count 
    #.count method to count the number of players in the roster
  end

  def players
    @roster
  end

  def to_s
    "Team: #{@name}, Location: #{@location}"
  end
end
