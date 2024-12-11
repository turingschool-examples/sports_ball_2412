require 'rspec'
require './lib/team.rb'
require './lib/player.rb'
require 'pry'

RSpec.describe Team do
    #Frequently used setup / execution:
    before(:each) do
        @team = Team.new("Dodgers", "Los Angeles")

        #Refactor:
        #Also add players (since their numbers / identities always hold consistent)
        @player_1 = Player.new("Michael Palledorous", 1000000, 36)
        @player_2 = Player.new("Kenny DeNunez", 500000, 24)
        @player_3 = Player.new("Alan McClennan", 750000, 48)
        @player_4 = Player.new("Hamilton Porter", 100000, 12)
    end

    it 'exists' do
        expect(@team).to be_a(Team)
    end

    #Not testing team name and location validity, as it does not appear in interaction pattern
    #and I don't define methods for them

    it 'has a roster' do
        # expect(@team.name).to eq()
        expect(@team.roster).to eq([])
    end

    it 'has correct number of players in empty roster' do
        expect(@team.player_count()).to eq(0)
    end

    it 'has correct full roster' do
        @team.add_player(@player_1)
        @team.add_player(@player_2)

        #Not sure how to exactly check the full contents of the array...
        #Doing object IDs is tricky, this line doesn't quite work:
        # expect(@team.roster).to eq([player_1.object_id, player_2.object_id])
        #This should suffice for now; just check each element
        expect(@team.roster[0].object_id).to eq(@player_1.object_id)
        expect(@team.roster[1].object_id).to eq(@player_2.object_id)
    end

    it 'has correct number of players in full roster' do
        @team.add_player(@player_1)
        @team.add_player(@player_2)

        expect(@team.player_count()).to eq(2)
    end

    it 'has correct list of long-term players' do
        @team.add_player(@player_1)
        @team.add_player(@player_2)
        @team.add_player(@player_3)
        @team.add_player(@player_4)
        
        #Based on interaction pattern, I assume "long-term" means > 24 months
        #Verify full array of long-term players:
        long_term_roster = @team.long_term_players()
        expect(long_term_roster[0].object_id).to eq(@player_1.object_id)
        expect(long_term_roster[1].object_id).to eq(@player_3.object_id)
    end

    it 'has correct list of short-term players' do
        #So much repetition for add_player(), but isn't always used (hence why I didn't put it in before(:each))
        @team.add_player(@player_1)
        @team.add_player(@player_2)
        @team.add_player(@player_3)
        @team.add_player(@player_4)
        
        #Based on interaction pattern, I assume "long-term" means > 24 months
        #Verify full array of long-term players:
        short_term_roster = @team.short_term_players()
        expect(short_term_roster[0].object_id).to eq(@player_2.object_id)
        expect(short_term_roster[1].object_id).to eq(@player_4.object_id)
    end

    it 'calculate correct total value of all players in roster' do
        @team.add_player(@player_1)
        @team.add_player(@player_2)
        @team.add_player(@player_3)
        @team.add_player(@player_4)

        #That is a pretty big number...
        expect(@team.total_value()).to eq(85200000)
    end

    it 'has specific properties / details' do
        @team.add_player(@player_1)
        @team.add_player(@player_2)
        @team.add_player(@player_3)
        @team.add_player(@player_4)

        #Could make more compact on expect() line, but expanding to make cleaner for now
        details_hash = {
            "total_value" => 85200000,
            "player_count" => 4
        }
        expect(@team.details()).to eq(details_hash)
    end

    it 'can calculate average cost per player' do
        @team.add_player(@player_1)
        @team.add_player(@player_2)
        @team.add_player(@player_3)
        @team.add_player(@player_4)

        expect(@team.average_cost_of_player()).to eq(21300000)

    end

    #NOTE: Making one intermediate test to check PARTIAL functionality of players_by_last_name
    #NOTE: Test served its purpose, now made as pending (or could be commented out)
    xit '(intermediate test): can return sorted array of all players last names' do
        @team.add_player(@player_1)
        @team.add_player(@player_2)
        @team.add_player(@player_3)
        @team.add_player(@player_4)

        #Aside: can I teach VS Code to interpret the array shorthand below correctly in terms of colors, etc?
        # expect(@team.players_by_last_name()).to eq(%w[Palledorous DeNunez McClennan Porter])
        expect(@team.players_by_last_name()).to eq(%w[DeNunez McClennan Palledorous Porter])
    end

    it 'can list player roster by only last name, alphabetized' do
        @team.add_player(@player_1)
        @team.add_player(@player_2)
        @team.add_player(@player_3)
        @team.add_player(@player_4)

        expect(@team.players_by_last_name()).to eq("DeNunez, McClennan, Palledorous, Porter")
    end

end
