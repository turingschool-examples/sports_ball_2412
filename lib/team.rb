class Team 

  attr_accessor :team_name, :team_city, :roster

  def initialize(team_name, team_city)
    @team_name = team_name
    @team_city = team_city
    @roster = []
  end

  def add_player(player)
    roster << player
  end

  def player_count
    return roster.length
  end

  def long_term_players
    return roster.select {|player| player.contract_length > 24}
  end

  def short_term_players
    return roster.select {|player| player.contract_length <= 24}
  end

  def total_value
    payroll = 0
    roster.each {|player| payroll += player.total_costg}
    return payroll
  end

end