require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do 
    before(:each) do 
        @team = Team.new("Dodgers", "Los Angeles") 

        @player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        @player_2 = Player.new("Kenny DeNunez", 500000, 24)
        @player_3 = Player.new("Alan McClennan", 750000, 48)
        @player_4 = Player.new("Hamilton Porter", 100000, 12)
    end

    it 'exists' do 
        expect(@team).to be_a(Team)
    end

    it 'has a team name' do 
        expect(@team.team_name).to eq("Dodgers")
    end

    it 'has a city' do 
        expect(@team.city).to eq("Los Angeles")
    end

    it 'starts with an empty roster' do 
        expect(@team.roster).to eq([])
    end

    it 'can add multiple players to the roster' do 
        @team.add_player(@player_1)
        @team.add_player(@player_2)

        expect(@team.roster).to eq([@player_1, @player_2])
    end

    it 'can count the player in the roster' do 
        @team.add_player(@player_1)
        @team.add_player(@player_2)

        expect(@team.player_count).to eq(2)
    end
end