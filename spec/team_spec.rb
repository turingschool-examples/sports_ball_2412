require './lib/team' # makes the Player class available to the test
require 'rspec' # connect to RSpec gem
require 'pry'

# run rspec spec/team_spec.rb 

RSpec.describe Team do
  it 'exists' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team).to be_a Team
  end

  it 'has a name' do
    team = Team.new("Aberdeen", [])
    expect(team.name).to eq("Aberdeen")
  end

  it 'has players' do
    team = Team.new("Aberdeen", [])
    expect(team.players).to eq([])
  end
end