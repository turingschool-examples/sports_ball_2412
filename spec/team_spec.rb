require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do 
    before(:each) do 
        @team = Team.new("Dodgers", "Los Angeles") 

        @player_1 = Player.new("Michael Palledorous", 1000000, 36)
        @player_2 = Player.new("Kenny DeNunez", 500000, 24)
        @player_3 = Player.new("Alan McClennan", 750000, 48)
        @player_4 = Player.new("Hamilton Porter", 100000, 12)
    end

    describe '#initialize' do
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
    end

    describe '#add_player' do
        it 'can add multiple players to the roster' do 
            @team.add_player(@player_1)
            @team.add_player(@player_2)

            expect(@team.roster).to eq([@player_1, @player_2])
        end
    end

    describe '#player_count' do
        it 'counts the players in the roster' do 
            @team.add_player(@player_1)
            @team.add_player(@player_2)

            expect(@team.player_count).to eq(2)
        end
    end

    describe '#long_term_players' do
        it 'returns players with long-term contracts (contract length > 24 months)' do
            @team.add_player(@player_1)
            @team.add_player(@player_2)
            @team.add_player(@player_3)
            @team.add_player(@player_4)

            expect(@team.long_term_players).to eq([@player_1, @player_3])
        end
    end

    describe '#short_term_players' do
            it 'returns players with short-term contracts (contract length <= 24 months)' do
            @team.add_player(@player_1)
            @team.add_player(@player_2)
            @team.add_player(@player_3)
            @team.add_player(@player_4)

            expect(@team.short_term_players).to eq([@player_2, @player_4])
        end
    end

    describe '#total_value' do
        it 'calculates the total value of all player contracts' do
            @team.add_player(@player_1)
            @team.add_player(@player_2)
            @team.add_player(@player_3)
            @team.add_player(@player_4)

            expect(@team.total_value).to eq(85200000)
        end
    end
end