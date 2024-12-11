require 'rspec'
require './lib/player.rb'

RSpec.describe Player do
  it 'exists' do
    player = Player.new("Michael Palledorous" , 1000000, 36)
    
    expect(player).to be_a Player
  end

  it 'has a first name' do
    player = Player.new("Michael Palledorous" , 1000000, 36)

    expect(player.first_name).to eq("Michael")
  end

  it 'has a last name' do
    player = Player.new("Michael Palledorous" , 1000000, 36)

    expect(player.last_name).to eq("Palledorous")
  end

  it 'has a monthly cost' do
    player = Player.new("Michael Palledorous" , 1000000, 36)

    expect(player.monthly_cost).to eq(1000000)
  end

  it 'has a contract length' do
    player = Player.new("Michael Palledorous" , 1000000, 36)

    expect(player.contract_length).to eq(36)
  end

  it 'has a total cost' do
    player = Player.new("Michael Palledorous" , 1000000, 36)

    expect(player.total_costg).to eq(36000000)
  end

  it 'can set and return a nickname' do
    player = Player.new("Michael Palledorous" , 1000000, 36)
    expect(player.nickname).to eq(nil)
    
    player.set_nickname!("Squints")
    expect(player.nickname).to eq("Squints")
  end

end