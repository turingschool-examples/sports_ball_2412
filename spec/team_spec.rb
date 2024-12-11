# Require  Player and Team classes for testing
require './lib/player'
require './lib/team'

# Begin RSpec tests for Team class
RSpec.describe Team do
  before :each do
    # Set up  team instance and players for testing
    @team = Team.new("Dodgers", "Los Angeles")
    @player_1 = Player.new("Michael Palledorous", 1000000, 36)
    @player_2 = Player.new("Kenny DeNunez", 500000, 24)
    @player_3 = Player.new("Alan McClennan", 750000, 48)
    @player_4 = Player.new("Hamilton Porter", 100000, 12)
  end

  # Test that a Team instance can be created
  it 'exists' do
    expect(@team).to be_a Team
  end

  # Test team's name
  it 'has a name' do
    expect(@team.name).to eq("Dodgers")
  end

  # Test team's location
  it 'has a location' do
    expect(@team.location).to eq("Los Angeles")
  end

  # Test that team starts with an empty roster
  it 'starts with an empty roster' do
    expect(@team.roster).to eq([])
  end

  # Test  player count on an empty team
  it 'has a player count starting at 0' do
    expect(@team.player_count).to eq(0)
  end

  # Test adding players to roster
  it 'can add players to the roster' do
    @team.add_player(@player_1)
    @team.add_player(@player_2)

    expect(@team.roster).to eq([@player_1, @player_2])
    expect(@team.player_count).to eq(2)
  end

  # Test identifying long-term players
  it 'can identify long term players' do
    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)

    expect(@team.long_term_players).to eq([@player_1, @player_3])
  end

  # Test identifying short-term players
  it 'can identify short term players' do
    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)

    expect(@team.short_term_players).to eq([@player_2, @player_4])
  end

  # Test calculating total value of the team
  it 'calculates the total value (payroll)' do
    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)

    expect(@team.total_value).to eq(85200000)
  end

  # Test returning team details
  it 'can return team details' do
    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)

    expect(@team.details).to eq({
      "total_value" => 85200000,
      "player_count" => 4
    })
  end

  # Test calculating average cost of a player
  it 'can calculate the average cost of a player' do
    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)

    expect(@team.average_cost_of_player).to eq("$21,300,000")
  end

  # Test listing players by last name in alphabetical order
  it 'can list players by last name in alphabetical order' do
    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)

    expect(@team.players_by_last_name).to eq("DeNunez, McClennan, Palledorous, Porter")
  end
end
