# frozen_string_literal: true

# Create a team with a name and a city. Can add players to roster.
class Team
  attr_reader :name, :city, :roster

  def initialize(name, city)
    @name = name
    @city = city
    @roster = []
  end

  def player_count
    @roster.size
  end

  def add_player(player)
    @roster << player
  end
end
