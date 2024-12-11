# Require the Player class for testing
require './lib/player'

# Begin RSpec tests for the Player class
RSpec.describe Player do
  before :each do
    # Set up a player instance for testing
    @player = Player.new("Michael Palledorous", 1000000, 36)
  end

  # Test that a Player instance can be created
  it 'exists' do
    expect(@player).to be_a Player
  end

  # Test  player's first name
  it 'has a first name' do
    expect(@player.first_name).to eq("Michael")
  end

  # Test player's last name
  it 'has a last name' do
    expect(@player.last_name).to eq("Palledorous")
  end

  # Test player's monthly cost
  it 'has a monthly cost' do
    expect(@player.monthly_cost).to eq(1000000)
  end

  # Test player's contract length
  it 'has a contract length' do
    expect(@player.contract_length).to eq(36)
  end

  # Test calculation of player's total cost
  it 'calculates the total cost' do
    expect(@player.total_cost).to eq(36000000)
  end

  # Test that player starts without a nickname
  it 'starts without a nickname' do
    expect(@player.nickname).to eq(nil)
  end

  # Test assigning and retrieving a nickname
  it 'can set and retrieve a nickname' do
    @player.set_nickname!("Squints")
    expect(@player.nickname).to eq("Squints")
  end
end

