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

  def details
    team_details = {
      "total_value" => self.total_value,
      "player_count" => self.player_count
    }
    return team_details
  end

  def average_cost_of_player
    avg_cost = (self.total_value / self.player_count)
    avg_cost_commas = avg_cost.to_s.chars.to_a.reverse.each_slice(3)
    return avg_cost_commas.map{|x| x.join}.join(',').reverse.insert(0, "$")
  end

  def players_by_last_name
    last_names = []
    roster.each {|player| last_names << player.last_name}
    return last_names.sort.join(", ")
  end

end