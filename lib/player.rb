# frozen_string_literal: true

# Create a player with a name, monthly cost, and contract length in months
class Player
  attr_reader :first_name, :last_name, :monthly_cost, :contract_length, :total_cost, :nickname

  def initialize(name, monthly_cost, contract_length)
    @first_name, @last_name = name.split
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @total_cost = monthly_cost * contract_length
  end

  def set_nickname!(nickname)
    @nickname = nickname
  end
end
