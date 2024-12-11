require 'rspec'
require './lib/player'

RSpec.describe Player do
  it 'exists' do
    player = Player.new("Michael Palledorous", 1000000, 36, "Squints")
    
    expect(player).to be_a (Player)
  end

    it 'has a first name' do
    player = Player.new("Michael Palledorous", 1000000, 36, "Squints")

    expect(player.first_name).to eq("Michael")
    end

  it 'has a last name' do
    player = Player.new("Michael Palledorous", 1000000, 36, "Squints")

    expect(player.last_name).to eq("Palledorous")
  end

  it 'has a monthly cost' do
    player = Player.new("Michael Palledorous", 1000000, 36, "Squints")

    expect(player.monthly_cost).to eq(1000000)
  end

  it 'has a contract length' do
    player = Player.new("Michael Palledorous", 1000000, 36, "Squints")

    expect(player.contract_length).to eq(36)
  end

  it 'has a total cost' do
    player = Player.new("Michael Palledorous", 1000000, 36, "Squints")

    expect(player.total_cost).to eq(36000000)
  end

  it 'returns no nickname by default' do
    player = Player.new("Michael Palledorous", 1000000, 36, "Squints")
    expect(player.nickname).to be_nil
  end

  it 'gives a nickname' do
    player = Player.new("Michael Palledorous", 1000000, 36, "Squints")
    
    expect(player.nickname).to eq("Squints")
  end



end