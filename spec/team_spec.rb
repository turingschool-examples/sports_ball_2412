require 'rspec'
require './lib/player'
require './lib/team'

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

  describe '#roster'do 
    it 'defaults an empty array' do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team.roster).to eq([])
    end

    it 'counts 0 as default' do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team.player_count).to eq(0)
    end

    it 'can add_player' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)

      team.add_player(player_1)
      team.add_player(player_2)

      expect(team.roster).to eq([player_1, player_2])
    end

    it 'can accurately count with players in roster' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)

      team.add_player(player_1)
      team.add_player(player_2)

      expect(team.player_count).to eq(2)
    end
  end
end
    
