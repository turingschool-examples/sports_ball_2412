class Team
  attr_reader :team_name, :city, :roster
  def initialize(team_name, city)
    @team_name = team_name
    @city = city
    @roster = []

  end

  def player_count
    @roster.length
  end

  def add_player(player)
    @roster << player
  end

  def long_term_players
    long_term_players = []
    @roster.each do |player|
      if player.contract_length > 24
        long_term_players << player
      end
    end
    long_term_players
  end

  def short_term_players
    short_term_players = []
    @roster.each do |player|
      if player.contract_length <= 24
        short_term_players << player
      end
    end
    short_term_players
  end

  def total_value
    total = 0
    @roster.each do |player|
      total += player.total_cost
    end
    total
  end
  
end