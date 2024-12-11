require './lib/player'
require './lib/team'
require 'rspec'

RSpec.describe Team do
    it "exists" do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team).to be_instance_of(Team)

    end

    it 'returns empty array for roster' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.roster).to eq([])
 
    end

    it 'returns the number of players' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.player_count).to eq(0)
    end

    it 'returns player_1' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        
        expect(player_1).to be(player_1)


    end

    it 'returns player_2' do
        team = Team.new("Dodgers", "Los Angeles")
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        expect(player_2).to be(player_2)

    end

    it 'adds player_1 to the roster' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        
        team.add_player(player_1)

        expect(team.roster).to include(player_1)


    end

    it 'adds player_2 to the roster' do
        team = Team.new("Dodgers", "Los Angeles")
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        
        team.add_player(player_2)

        expect(team.roster).to include(player_2)


    end

    it 'returns player_count' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        
        team.add_player(player_2)
        team.add_player(player_2)

        expect(team.player_count).to eq(2)
    end

    it 'adds players to roster' do 
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        
        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.roster).to include(player_1, player_2)

    end

end



