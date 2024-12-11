require './lib/player'
require './lib/team'
require 'rspec'

RSpec.describe Player do
  it 'exists' do
    player = Player.new("Michael Palledorous", 1000000, 36)
    expect(player).to be_a Player
  end

  it 'has a first name' do
    player = Player.new("Michael Palledorous", 1000000, 36)
    expect(player.first_name).to eq("Michael")
  end

  it 'has a last name' do
    player = Player.new("Michael Palledorous", 1000000, 36)
    expect(player.last_name).to eq("Palledorous")
  end

  it 'has a contract' do
    player = Player.new("Michael Palledorous", 1000000, 36)
    expect(player.contract).to eq(1000000)
  end

  it 'has a contract length' do
    player = Player.new("Michael Palledorous", 1000000, 36)
    expect(player.contract_length).to eq(36)
  end

  it 'has a total cost' do
    player = Player.new("Michael Palledorous", 1000000, 36)
    expect(player.total_cost).to eq(36000000)
  end
end

RSpec.describe Team do
  it 'exists' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team).to be_a Team
  end

  it 'has a name' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team.name).to eq("Dodgers")
  end

  it 'has a location' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team.location).to eq("Los Angeles")
  end

  it 'can add players to the roster' do
    team = Team.new("Dodgers", "Los Angeles")
    player = Player.new("Michael Palledorous", 1000000, 36)
    team.add_player(player)
    expect(team.roster).to include(player)
  end

  it 'can count the number of players in the roster' do
    team = Team.new("Dodgers", "Los Angeles")
    player1 = Player.new("Michael Palledorous", 1000000, 36)
    player2 = Player.new("Benny Rodriguez", 2000000, 24)
    team.add_player(player1)
    team.add_player(player2)
    expect(team.player_count).to eq(2)
  end
end