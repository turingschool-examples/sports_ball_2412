class Player
  attr_accessor :name, :first_name, :last_name, :monthly_cost, :contract_length

  def initialize(name, monthly_cost, contract_length)
    names = name.split
    @first_name = names[0]
    @last_name = names[1]
    @monthly_cost = monthly_cost
    @contract_length = contract_length
  end

  def total_costg
    return monthly_cost * contract_length
  end

end