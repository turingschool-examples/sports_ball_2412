require 'rspec'
require './lib/player'
require './lib/team'

describe Team do
    it 'exists' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team).to be_a(Team)
    end

    it 'has a roster' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.roster).to eq([])
    end

    it 'has a player cound' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.player_count).to eq(0)
    end

    it 'can hold players in a roster' do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.roster).to eq([player_1, player_2])
    end

    it 'has an accurate player count' do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.player_count).to eq(2)
    end

    it 'can fetch long term players' do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.long_term_players).to eq([player_1, player_3])
    end

    it 'can fetch short term players' do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.short_term_players).to eq([player_2, player_4])
    end

    it 'can fetch the monthly payroll of all players' do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.total_value).to eq(85200000)
    end

    it 'can get team deatils' do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.details).to eq({"total_value" => 85200000, "player_count" => 4})
    end

    it 'can get the average cost of a player' do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.average_cost_of_player).to eq("$21,300,000")
    end

    it 'can fetch the last name of every player' do
        team = Team.new("Dodgers", "Los Angeles")
        
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.players_by_last_name).to eq("DeNunez, McClennan, Palledorous, Porter")
    end

    it 'can handle average player costs with digits divisble by 3' do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous" , 10, 36)
        player_2 = Player.new("Kenny DeNunez", 3, 24)
        player_3 = Player.new("Alan McClennan", 5, 48)
        player_4 = Player.new("Hamilton Porter", 16, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.average_cost_of_player).to eq("$216")
    end
end