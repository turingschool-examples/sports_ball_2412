# frozen_string_literal: true

require 'rspec'
require_relative '../lib/team'
require_relative '../lib/player'

describe Team do
  it 'exists' do
    team = described_class.new('Dodgers', 'Los Angeles')

    expect(team).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    team = described_class.new('Dodgers', 'Los Angeles')

    expect(team.name).to eq('Dodgers')
  end

  it 'has a city' do
    team = described_class.new('Dodgers', 'Los Angeles')

    expect(team.city).to eq('Los Angeles')
  end

  it 'has a roster' do
    team = described_class.new('Dodgers', 'Los Angeles')

    expect(team.roster).to eq([])
  end

  it 'can count players' do
    team = described_class.new('Dodgers', 'Los Angeles')

    expect(team.player_count).to eq(0)
  end

  it 'can add players' do # rubocop:disable RSpec/ExampleLength
    team = described_class.new('Dodgers', 'Los Angeles')
    player1 = Player.new('Michael Palledorous', 1_000_000, 36)
    player2 = Player.new('Kenny DeNunez', 500_000, 24)

    team.add_player(player1)
    team.add_player(player2)

    expect(team.player_count).to eq(2)
  end
end
