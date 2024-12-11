require 'rspec'
require './lib/player'

class Player
  attr_reader :first_name, :last_name, :monthly_cost, :contract_length

  def initialize(name, monthly_cost, contract_length)
    @first_name, @last_name = name.split
    @monthly_cost = monthly_cost
    @contract_length = contract_length
  end

  def total_cost
    @monthly_cost * @contract_length
  end
end