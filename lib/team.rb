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
end