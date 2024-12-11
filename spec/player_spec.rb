# frozen_string_literal: true

require 'rspec'
require_relative '../lib/player'

RSpec.describe Player do
  it 'exists' do
    player = described_class.new('Michael Palledorous', 1_000_000, 36)

    expect(player).to be_a described_class
  end

  it 'has a first name' do
    player = described_class.new('Michael Palledorous', 1_000_000, 36)

    expect(player.first_name).to eq('Michael')
  end

  it 'has a last name' do
    player = described_class.new('Michael Palledorous', 1_000_000, 36)

    expect(player.last_name).to eq('Palledorous')
  end

  it 'has a monthly cost' do
    player = described_class.new('Michael Palledorous', 1_000_000, 36)

    expect(player.monthly_cost).to eq(1_000_000)
  end

  it 'has a contract length' do
    player = described_class.new('Michael Palledorous', 1_000_000, 36)

    expect(player.contract_length).to eq(36)
  end

  it 'has a total cost' do
    player = described_class.new('Michael Palledorous', 1_000_000, 36)

    expect(player.total_cost).to eq(36_000_000)
  end
end
