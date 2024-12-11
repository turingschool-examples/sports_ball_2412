# frozen_string_literal: true

require 'rspec'
require_relative '../lib/team'
require_relative '../lib/player'

describe Team do
  let(:team) { described_class.new('Dodgers', 'Los Angeles') }
  let(:first_player) { Player.new('Michael Palledorous', 1_000_000, 36) }
  let(:second_player) { Player.new('Kenny DeNunez', 500_000, 24) }
  let(:third_player) { Player.new('Alan McClennan', 750_000, 48) }
  let(:fourth_player) { Player.new('Hamilton Porter', 100_000, 12) }

  describe '#initialize' do
    subject(:team) { described_class.new('Dodgers', 'Los Angeles') }

    it { is_expected.not_to be_nil }
    it { is_expected.to be_an_instance_of described_class }

    describe '#name' do
      subject(:name) { team.name }

      it { is_expected.not_to be_nil }

      it 'returns name' do
        expect(name).to eq('Dodgers')
      end
    end

    describe '#city' do
      subject(:city) { team.city }

      it { is_expected.not_to be_nil }

      it 'returns city' do
        expect(city).to eq('Los Angeles')
      end
    end
  end

  context 'when roster is empty' do
    describe '#roster' do
      subject(:roster) { team.roster }

      it { is_expected.not_to be_nil }

      it 'returns empty array' do
        expect(roster).to eq([])
      end
    end

    describe '#player_count' do
      subject(:player_count) { team.player_count }

      it { is_expected.not_to be_nil }

      it 'returns 0' do
        expect(player_count).to eq(0)
      end
    end

    describe '#long_term_players' do
      subject(:long_term_players) { team.long_term_players }

      it { is_expected.not_to be_nil }

      it 'returns empty array' do
        expect(long_term_players).to eq([])
      end
    end

    describe '#short_term_players' do
      subject(:short_term_players) { team.short_term_players }

      it { is_expected.not_to be_nil }

      it 'returns empty array' do
        expect(short_term_players).to eq([])
      end
    end

    describe '#total_value' do
      subject(:total_value) { team.total_value }

      it { is_expected.not_to be_nil }

      it 'returns 0' do
        expect(total_value).to eq(0)
      end
    end

    describe '#details' do
      subject(:details) { team.details }

      it { is_expected.not_to be_nil }

      it 'returns details as hash with values of 0' do
        expect(details).to eq({ 'total_value' => 0, 'player_count' => 0 })
      end
    end

    describe '#average_cost_of_player' do
      subject(:average_cost_of_player) { team.average_cost_of_player }

      it { is_expected.not_to be_nil }

      it 'returns "$0"' do
        expect(team.average_cost_of_player).to eq('$0')
      end
    end

    describe '#players_by_last_name' do
      subject(:players_by_last_name) { team.players_by_last_name }

      it { is_expected.not_to be_nil }

      it 'returns empty array' do
        expect(players_by_last_name).to eq([])
      end
    end
  end

  context 'when roster is full' do
    before do
      team.add_player(first_player)
      team.add_player(second_player)
      team.add_player(third_player)
      team.add_player(fourth_player)
    end

    describe '#roster' do
      subject(:roster) { team.roster }

      it 'returns array of players' do
        expect(roster).to eq([first_player, second_player, third_player, fourth_player])
      end
    end

    describe '#player_count' do
      subject(:player_count) { team.player_count }

      it 'returns amount of players as integer' do
        expect(player_count).to eq(4)
      end
    end

    describe '#long_term_players' do
      subject(:long_term_players) { team.long_term_players }

      it 'returns array of long term players' do
        expect(long_term_players).to eq([first_player, third_player])
      end
    end

    describe '#short_term_players' do
      subject(:short_term_players) { team.short_term_players }

      it 'returns array of short term players' do
        expect(short_term_players).to eq([second_player, fourth_player])
      end
    end

    describe '#total_value' do
      subject(:total_value) { team.total_value }

      it 'returns total value as integer' do
        expect(total_value).to eq(85_200_000)
      end
    end

    describe '#details' do
      subject(:details) { team.details }

      it 'returns details as hash' do
        expect(details).to eq({ 'total_value' => 85_200_000, 'player_count' => 4 })
      end
    end

    describe '#average_cost_of_player' do
      subject(:average_cost_of_player) { team.average_cost_of_player }

      it 'returns average cost of player as properly formatted string' do
        expect(team.average_cost_of_player).to eq('$21,300,000')
      end
    end

    describe '#players_by_last_name' do
      subject(:players_by_last_name) { team.players_by_last_name }

      it 'returns array of players sorted by last name' do
        expect(team.players_by_last_name).to eq([fourth_player, first_player, third_player, second_player])
      end
    end
  end
end
