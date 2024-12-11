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
        team = Team.new("Padres", "San Diego")

        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.roster).to eq([player_1, player_2])
        expect(team.player_count).to eq(2)
    end

    it 'can determine long term players' do
        team = Team.new("Padres", "San Diego")

        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.long_term_players).to eq([player_1, player_3])
    end

    it 'can determine short term players' do
        team = Team.new("Padres", "San Diego")

        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.short_term_players).to eq([player_2, player_4])
    end

    it 'can total the teams complete cost value' do
        team = Team.new("Padres", "San Diego")

        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.total_value).to eq(85200000)
    end

    it 'can collect the team details' do
        team = Team.new("Padres", "San Diego")

        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.details).to eq({"total_value" => 85200000, "player_count" => 4})
    end

    it 'can tell the average cost of players' do
        team = Team.new("Padres", "San Diego")

        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.average_cost_of_player).to eq("$21,300,000")
    end

    it 'can alphabetize roster by last name' do
        team = Team.new("Padres", "San Diego")

        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.players_by_last_name).to eq("DeNunez, McClennan, Palledorous, Porter")
    end
end