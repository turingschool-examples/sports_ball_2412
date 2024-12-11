require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do
    it 'exists' do
    
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    team = Team.new("Dodgers", "Los Angeles")
    
    expect(team).to be_a Team

    end

    it 'has a roster' do

    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    team = Team.new("Dodgers", "Los Angeles")
    
    expect(team.roster).to eq([])

    end

    it 'has a player count' do

    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    team = Team.new("Dodgers", "Los Angeles")
    
    expect(team.player_count).to eq(0)
  
    end

    it 'adds a player and checks roster' do

    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    team = Team.new("Dodgers", "Los Angeles")
    team.add_player(player_1)
    expect(team.roster).to eq([player_1])

    end

    it 'checks player count' do

    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    team = Team.new("Dodgers", "Los Angeles")
    team.add_player(player_1)
    team.add_player(player_2)

    expect(team.player_count).to eq(2)

    end

    it 'checks long term players' do

    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team = Team.new("Dodgers", "Los Angeles")
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)

    expect(team.long_term_players).to eq(2)
   
    end

    xit 'checks short term players' do

    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team = Team.new("Dodgers", "Los Angeles")
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)

    expect(team.short_term_players).to eq(2)

    end

end