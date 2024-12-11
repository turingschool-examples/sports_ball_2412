require './lib/player.rb'

class Team 
  attr_accessor :mascot, :city, :roster

  def initialize(mascot, city)
    @mascot = mascot
    @city = city
    @roster = []
  end

  def add_player(player)
    @roster << player
  end
    
  def player_count
    @roster.length
  end

  def long_term_players
    @roster.select {|month| month.contract_length > 24}
  end

  def short_term_players
    @roster.select {|month| month.contract_length <= 24}
  end

  def total_value
    @roster.sum {|contract| contract.total_costg}
  end
end