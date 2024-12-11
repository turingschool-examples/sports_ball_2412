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
    expect(team.player_count).to eq(1)

    team.add_player(player_2)
    expect(team.roster[1]).to eq(player_2)

    expect(team.roster).to eq([player_1, player_2])
    expect(team.player_count).to eq(2)
  end

end