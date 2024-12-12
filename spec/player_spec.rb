require './lib/player'
require 'rspec'
require 'pry'

RSpec.describe Player do
  it 'exists' do
    player = Player.new("Michael Palledorous", 1000000, 36)
    expect(player).to be_a Player
  end

  it 'has a first name' do
    player = Player.new("Michael Palledorous", 1000000, 36)
    expect(player.first_name).to eq("Michael")
  end

  it 'has a last name' do
    player = Player.new("Michael Palledorous", 1000000, 36)
    expect(player.last_name).to eq("Palledorous")
  end

  it 'has a monthly cost' do
    player = Player.new("Michael Palledorous", 1000000, 36)
    expect(player.monthly_cost).to eq(1000000)
  end

  it 'has a contract length' do
    player = Player.new("Michael Palledorous", 1000000, 36)
    expect(player.contract_length).to eq(36)
  end

  it 'has a total cost' do
    player = Player.new("Michael Palledorous", 1000000, 36)
    expect(player.total_cost).to eq(36000000)
  end

  it "can determine long term players" #long term is considered 24 months or more
    team = Team.new("Dodgers", "Los Angeles")
  
  pry(main)> player_1 = Player.new("Michael Palledorous" , 1000000, 36)
  pry(main)> player_2 = Player.new("Kenny DeNunez", 500000, 24)
  pry(main)> player_3 = Player.new("Alan McClennan", 750000, 48)
  pry(main)> player_4 = Player.new("Hamilton Porter", 100000, 12)

  pry(main)> team.add_player(player_1)
  pry(main)> team.add_player(player_2)
  pry(main)> team.add_player(player_3)
  pry(main)> team.add_player(player_4)



end

#to run all test files in the spec directory, run rspec spec