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

    # it 'returns player_1' do
    #     team = Team.new("Dodgers", "Los Angeles")
    #     player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        
    #     expect(player_1).to be(player_1)

    # end

    # it 'returns player_2' do
    #     team = Team.new("Dodgers", "Los Angeles")
    #     player_2 = Player.new("Kenny DeNunez", 500000, 24)

    #     expect(player_2).to be(player_2)

    # end

    # it 'returns player_3' do
    #     team = Team.new("Dodgers", "Los Angeles")
    #     player_3 = Player.new("Alan McClennan", 750000, 48)

    #     expect(player_3).to be(player_3)
    # end

    # it 'returns player_4' do
    #     team = Team.new("Dodgers", "Los Angeles")
    #     player_4 = Player.new("Hamilton Porter", 100000, 12)
        
    #     expect(player_4).to be(player_4)
    # end


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

    it 'adds player_3 to the roster' do
        team = Team.new("Dodgers", "Los Angeles")
        player_3 = Player.new("Alan McClennan", 750000, 48)
        
        team.add_player(player_3)

        expect(team.roster).to include(player_3)


    end

    it 'adds player_4 to the roster' do
        team = Team.new("Dodgers", "Los Angeles")
        player_4 = Player.new("Hamilton Porter", 100000, 12)
        
        team.add_player(player_4)

        expect(team.roster).to include(player_4)


    end


    it 'returns player_count' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)
        
        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.player_count).to eq(4)
    end

    it 'adds players to roster' do 
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48) 
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.roster).to include(player_1, player_2, player_3, player_4)

    end

    it 'returns long_term players' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48) 
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        expect(team.long_term_players).to eq(team.long_term_players)
    end

    it 'returns short_term players' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48) 
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        expect(team.short_term_players).to eq(team.short_term_players)
    end

    
end



