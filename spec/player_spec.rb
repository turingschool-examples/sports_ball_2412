# frozen_string_literal: true

require 'rspec'
require_relative '../lib/player'

describe Player do
  subject(:player) { described_class.new('Michael Palledorous', 1_000_000, 36) }

  describe '#initialize' do
    it { is_expected.not_to be_nil }
    it { is_expected.to be_an_instance_of described_class }

    describe '#first_name' do
      subject(:first_name) { player.first_name }

      it { is_expected.not_to be_nil }

      it 'returns first name' do
        expect(player.first_name).to eq('Michael')
      end
    end

    describe '#last_name' do
      subject(:last_name) { player.last_name }

      it { is_expected.not_to be_nil }

      it 'returns last name' do
        expect(player.last_name).to eq('Palledorous')
      end
    end

    describe '#monthly_cost' do
      subject(:monthly_cost) { player.monthly_cost }

      it { is_expected.not_to be_nil }

      it 'returns monthly cost' do
        expect(player.monthly_cost).to eq(1_000_000)
      end
    end

    describe '#contract_length' do
      subject(:contract_length) { player.contract_length }

      it { is_expected.not_to be_nil }

      it 'returns last name' do
        expect(player.contract_length).to eq(36)
      end
    end

    describe '#total_cost' do
      subject(:total_cost) { player.total_cost }

      it { is_expected.not_to be_nil }

      it 'returns last name' do
        expect(player.total_cost).to eq(36_000_000)
      end
    end
  end

  describe '#nickname' do
    subject(:nickname) { player.nickname }

    context 'when nickname has not been set' do
      it { is_expected.to be_nil }
    end

    context 'when nickname has been set' do
      it 'returns nickname' do
        player.set_nickname!('Squints')

        expect(player.nickname).to eq('Squints')
      end
    end
  end
end
