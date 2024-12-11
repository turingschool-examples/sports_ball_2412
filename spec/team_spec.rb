require 'rspec'
require './lib/player'
require './lib/team'
require 'pry'

RSpec.describe Team do
    it 'exists' do

        team = Team.new("Dodgers", "Los Angeles")
    
        expect(team).to be_a Team
    end

    it 'has players'do

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        team = Team.new("Dodgers", "Los Angeles")

        expect(player_1).to be_a Player
        expect(player_2).to be_a Player
    end

    it 'creates a roster'do

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)
        team = Team.new("Dodgers", "Los Angeles")


        expect(@team.add_player(player_1)).to be_an_instance_of(@roster)
        expect(@team.add_player(player_2)).to be_an_instance_of(@roster)
        expect(@team.add_player(player_3)).to be_an_instance_of(@roster)
        expect(@team.add_player(player_4)).to be_an_instance_of(@roster)
    end

    it 'has long term players' do
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)
        team = Team.new("Dodgers", "Los Angeles")

        player_1.long_term_player?
        player_3.long_term_player?
        
        expect(@team.long_term_players).to be([player_1, player_3])

    end

    it 'has short term players'do
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)
        team = Team.new("Dodgers", "Los Angeles")

        player_2.short_term_player?
        player_4.short_term_player?
        
        expect(@team.short_term_players).to be([player_2, player_4])
    end

    it 'has a total team value' do
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)
        team = Team.new("Dodgers", "Los Angeles")

        expect(team_total_value).to be(85200000)
    end
end



#Team creates a roster, Team has long term players, Team has short term players, Team has a total team value
#all these tests are failing with undefined values, which I worked for almost an hour on. I defined them in the 
#team class so i am not sure why i cant call them in my tests. I need help with that