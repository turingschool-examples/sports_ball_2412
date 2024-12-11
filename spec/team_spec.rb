require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do
    it 'exists' do
        team = Team.new("Padres", "San Diego")

        expect(team).to be_a Team
    end

    it 'has roster space' do
        team = Team.new("Padres", "San Diego")

        expect(team.roster).to eq([])
    end

    it 'can count players' do
        team = Team.new("Padres", "San Diego")

        expect(team.player_count).to eq(0)
    end

    it 'players can be added' do
        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        team = Team.new("Padres", "San Diego")

        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.roster).to eq([player_1, player_2])
        expect(team.player_count).to eq(2)
    end
end