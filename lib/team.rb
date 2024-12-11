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

  def long_term_players
    @roster.find_all { |player| player.contract_length > 24 }
  end

  def short_term_players
    @roster.find_all { |player| player.contract_length <= 24 }
  end

  def total_value
    @roster.sum(&:total_cost)
  end

  def details
    { 'total_value' => total_value, 'player_count' => player_count }
  end

  def average_cost_of_player
    return '$0' if @roster.empty?

    "$#{(total_value / player_count).to_s.chars.reverse.each_slice(3).map(&:join).join(',').reverse}"
  end

  def players_by_last_name
    @roster.sort_by(&:last_name).reverse!
  end
end
