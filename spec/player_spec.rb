require './lib/player'

RSpec.describe Player do
  before :each do
    @player = Player.new("Michael Palledorous", 1000000, 36)
  end

  it 'exists' do
    expect(@player).to be_a Player
  end

  it 'has a first name' do
    expect(@player.first_name).to eq("Michael")
  end

  it 'has a last name' do
    expect(@player.last_name).to eq("Palledorous")
  end

  it 'has a monthly cost' do
    expect(@player.monthly_cost).to eq(1000000)
  end

  it 'has a contract length' do
    expect(@player.contract_length).to eq(36)
  end

  it 'calculates the total cost' do
    #took out a unnecessary g to .total_cost
    expect(@player.total_cost).to eq(36000000)
  end

  it 'starts without a nickname' do
    expect(@player.nickname).to eq(nil)
  end

  it 'can set and retrieve a nickname' do
    @player.set_nickname!("Squints")
    expect(@player.nickname).to eq("Squints")
  end
end
