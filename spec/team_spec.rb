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

  it 'can add players' do
    team = described_class.new('Dodgers', 'Los Angeles')
    player1 = Player.new('Michael Palledorous', 1_000_000, 36)
    player2 = Player.new('Kenny DeNunez', 500_000, 24)

    team.add_player(player1)
    team.add_player(player2)

    expect(team.player_count).to eq(2)
  end

  it 'can have long term players' do
    team = described_class.new('Dodgers', 'Los Angeles')
    player1 = Player.new('Michael Palledorous', 1_000_000, 36)
    player2 = Player.new('Kenny DeNunez', 500_000, 24)
    player3 = Player.new('Alan McClennan', 750_000, 48)
    player4 = Player.new('Hamilton Porter', 100_000, 12)

    team.add_player(player1)
    team.add_player(player2)
    team.add_player(player3)
    team.add_player(player4)

    expect(team.long_term_players).to eq([player1, player3])
  end

  it 'can have short term players' do
    team = described_class.new('Dodgers', 'Los Angeles')
    player1 = Player.new('Michael Palledorous', 1_000_000, 36)
    player2 = Player.new('Kenny DeNunez', 500_000, 24)
    player3 = Player.new('Alan McClennan', 750_000, 48)
    player4 = Player.new('Hamilton Porter', 100_000, 12)

    team.add_player(player1)
    team.add_player(player2)
    team.add_player(player3)
    team.add_player(player4)

    expect(team.short_term_players).to eq([player2, player4])
  end

  it 'can get total value' do
    team = described_class.new('Dodgers', 'Los Angeles')
    player1 = Player.new('Michael Palledorous', 1_000_000, 36)
    player2 = Player.new('Kenny DeNunez', 500_000, 24)
    player3 = Player.new('Alan McClennan', 750_000, 48)
    player4 = Player.new('Hamilton Porter', 100_000, 12)

    team.add_player(player1)
    team.add_player(player2)
    team.add_player(player3)
    team.add_player(player4)

    expect(team.total_value).to eq(85_200_000)
  end
end
