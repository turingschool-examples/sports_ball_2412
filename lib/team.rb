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

end