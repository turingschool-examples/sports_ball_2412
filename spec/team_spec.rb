require './lib/team' # makes the Player class available to the test
require 'rspec' # connect to RSpec gem
require 'pry'

# run rspec spec/team_spec.rb 

RSpec.describe Team do #RS remember cap RSpec
  it 'exists' do
    team = Team.new("Dodgers", "Los Angeles") 
    #new instance of team class with 2 arguments
    #team name is "Dodgers" and location is "Los Angeles"
    expect(team).to be_a Team
    #expect the team to be an instance of the team class
  end
  
  it 'has a roster' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team.roster).to eq([])
  end

  it 'have a player count' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team.player_count).to eq(0)
  end
  

  it 'has a name' do
    team = Team.new("Aberdeen", [])
    expect(team.name).to eq("Aberdeen")
  end

  it 'has players' do
    team = Team.new("Aberdeen", [])
    expect(team.players).to eq([])

    #expect the team to have an empty array of players

  end
end