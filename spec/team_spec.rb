require './lib/player'
require './lib/team'

RSpec.describe Team do
    it 'exists' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team).to be_an_instance_of(Team)
    end

    it 'creates a roster'do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.roster).to eq([])
    end

    it 'counts the players' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.player_count).to eq(0)
    end

    # it 'adds players' do
    #     player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    #     player_2 = Player.new("Kenny DeNunez", 500000, 24)

    #     players = [player_1, player_2]
    #     team = Team.new("Dodgers", "Los Angeles")
        
    #     expect(team.add_player).to eq(@roster)
    # end
    
    it 'checks the roster after adding players' do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        players = [player_1, player_2]

        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.roster).to eq([player_1, player_2])
    end

    it 'counts the roster after adding players' do 
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        expect(team.player_count).to eq(2)
    end


end


