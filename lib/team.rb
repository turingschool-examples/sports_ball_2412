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

  #develop method to determine all long term players
  def long_term_players
    @roster.select do |player|
      player.contract_length > 24
    end
  end

  #develop method to determine all short term players
  def short_term_players
    @roster.select do |player|
      player.contract_length <= 24
    end
  end

  def total_value
    @roster.sum(&:total_cost)
  end
end

#select methods is used to return a new array containing all elements of the original array for which the block returns a true value
