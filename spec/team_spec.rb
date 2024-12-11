require 'rspec'
require './lib/player.rb'
require './lib/team.rb'


describe Team do
  it 'exists' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team).to be_a(Team)
  end

  it 'has a name' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team.team_name).to eq("Dodgers")
  end

  it 'has a city' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team.team_city).to eq("Los Angeles")
  end

  it 'starts with an empty roster' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team.roster).to eq([])
  end

  it 'tracks player count' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team.player_count).to eq(0)
  end

  it 'can add players to its roster' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous", 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)

    team.add_player(player_1)
    expect(team.roster[0]).to eq(player_1)

    team.add_player(player_2)
    expect(team.roster[1]).to eq(player_2)

    expect(team.roster).to eq([player_1, player_2])
    expect(team.player_count).to eq(2)
  end

  it 'can track long-term players' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous", 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.long_term_players).to eq([player_1, player_3])
  end

  it 'can track short-term players' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous", 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.short_term_players).to eq([player_2, player_4])
  end

  it 'can track team total value/payroll' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous", 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.total_value).to eq(85200000)
  end

  it 'can provide team details' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous", 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.details["total_value"]).to eq(85200000)
    expect(team.details["player_count"]).to eq(4)
  end

  it 'tracks average player cost' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous", 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.average_cost_of_player).to eq("$21,300,000")
  end

  it 'can present players by last name' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous", 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.players_by_last_name).to eq("DeNunez, McClennan, Palledorous, Porter")
  end

end