# Team class = a sports team, managing a roster of players and team statistics.
class Team
  attr_reader :name, :location, :roster

  # Initialize  new team with a name, location, and an empty roster.
  def initialize(name, location)
    @name = name         # Name of the team.
    @location = location # Location of the team.
    @roster = []         # Initially, the roster is empty.
  end

  # Add a player to team's roster.
  def add_player(player)
    @roster << player
  end

  # Return total number of players on the roster.
  def player_count
    @roster.size
  end

  # Return all players with contract lengths greater than 24 months.
  def long_term_players
    @roster.select { |player| player.contract_length > 24 }
  end

  # Return all players with contract lengths of 24 months or less.
  def short_term_players
    @roster.select { |player| player.contract_length <= 24 }
  end

  # Calculate total payroll for the team by summing total cost of all players.
  def total_value
    @roster.sum(&:total_cost)
  end
end
