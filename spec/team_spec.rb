require 'rspec'
require './lib/team.rb'
require './lib/player.rb'
require 'pry'

RSpec.describe Team do
    #Frequently used setup / execution:
    before(:each) do
        #Could also add players here, but really only used once...
        @team = Team.new("Dodgers", "Los Angeles")
    end

    it 'team: exists' do
        expect(@team).to be_a(Team)
    end

    it 'team: has a roster' do
        # expect(@team.name).to eq()
        expect(@team.roster).to eq([])
    end

    #Not testing team name and location validity, as it does not appear in interaction pattern
    #and I don't define methods for them

    it 'team: has correct number of players in empty roster' do
        expect(@team.player_count()).to eq(0)
    end

    it 'team: has correct full roster' do
        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        team.add_player(player_1)
        team.add_player(player_2)

        #Not sure how to exactly check the full contents of the array...
        expect(team.roster).to eq([player_1.object_id, player_2.object_id])
    end

    it 'team: has correct number of players in full roster' do
        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.player_count()).to eq(2)
    end

end
