require './lib/player.rb'
require './lib/team.rb'
require 'rspec'

RSpec.describe Team do
  before(:each) do
    @team = Team.new("Dodgers", "Los Angeles")
  end

  it 'exists' do
    expect(@team).to be_a Team
  end

  it 'has a roster' do
    expect(@team.roster).to eq([])
  end
end

RSpec.describe Team do
  before(:each) do
    @team = Team.new("Dodgers", "Los Angeles")
    @player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    @player_2 = Player.new("Kenny DeNunez", 500000, 24)

    @team.add_player(@player_1)
    @team.add_player(@player_2)
  end

  it 'has a roster' do
    expect(@team.roster).to eq([@player_1, @player_2])
  end

  it 'counts players' do
    expect(@team.player_count).to eq(2)
  end

end

RSpec.describe Team do
  before(:each) do
    @team = Team.new("Dodgers", "Los Angeles")

    @player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    @player_2 = Player.new("Kenny DeNunez", 500000, 24)
    @player_3 = Player.new("Alan McClennan", 750000, 48)
    @player_4 = Player.new("Hamilton Porter", 100000, 12)

    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)
  end
  it 'has long term players' do
    expect(@team.long_term_players).to eq([@player_1, @player_3])
  end

  it 'has short term players' do
    expect(@team.short_term_players).to eq([@player_2, @player_4])
  end

  it 'has payroll' do
    expect(@team.total_value).to eq(85200000)
  end

  it 'has deatals' do
    expect(team.details).to eq({"total_value" => 85200000, "player_count" => 4})
  end

  it 'averages' do
    expect(@team.average_cost_of_player).to eq("$21,300,000")
  end
  
  it 'sorts players' do
    expect(team.players_by_last_name). to eq("DeNunez, McClennan, Palledorous, Porter")
  end
  
end

