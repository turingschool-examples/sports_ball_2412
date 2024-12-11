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

    it ''
end