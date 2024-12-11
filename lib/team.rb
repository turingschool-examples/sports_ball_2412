class Team
  attr_reader :name, :location, :roster

  def initialize(name, location)
    @name = name
    @location = location
    @roster = []
  end

  def player_count
    @roster.count
  end

  def add_player(player)
    @roster << player
  end

  def long_term_players
    long_term = []
    @roster.each do |player|
      if player.contract_length > 24
        long_term << player
      end
    end
    return long_term
  end

  def short_term_players
    short_term = []
    @roster.each do |player|
      if player.contract_length <= 24
        short_term << player
      end
    end
    return short_term
  end

  def total_value
    payroll = 0
    @roster.each do |player|
      payroll += player.total_cost
    end
    return payroll
  end
end