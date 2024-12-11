# class represents a sports team and its associated players
class Team
  # These attributes allow access to the team's details and roster
  attr_reader :name, :location, :roster

  # Initializes a new Team object with its name, location, and an empty roster
  def initialize(name, location)
    # Team's name
    @name = name
    # Team's location
    @location = location
    # Team starts with an empty roster
    @roster = []
  end

  # Adds a player to team's roster
  def add_player(player)
    @roster << player
  end

  # Returns total number of players on the roster
  def player_count
    @roster.size
  end

  # Returns players with contracts longer than 24 months
  def long_term_players
    @roster.select { |player| player.contract_length > 24 }
  end

  # Returns players with contracts of 24 months or less
  def short_term_players
    @roster.select { |player| player.contract_length <= 24 }
  end

  # Calculates total value (payroll) of all players in the team
  def total_value
    @roster.sum(&:total_cost)
  end

  # Returns a hash with details about team, including total value and player count
  def details
    {
      "total_value" => total_value,
      "player_count" => player_count
    }
  end

  # Calculates the average cost of a player, formatted as a dollar amount
  def average_cost_of_player
    if player_count > 0
      average_cost = total_value / player_count
      # Format number with commas and a dollar sign
      "$#{average_cost.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse}"
    else
      "$0"
    end
  end

  # Returns the last names of players in alphabetical order as a single string
  def players_by_last_name
    @roster.map(&:last_name).sort.join(", ")
  end
end
