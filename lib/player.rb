class Player
  attr_reader :first_name, :last_name, :monthly_cost, :contract_length, :total_cost

  def initialize(full_name, monthly_cost, contract_length)
    @full_name = full_name
    @monthly_cost = monthly_cost
    @contract_length = contract_length


    set_names
  end

  def set_names
    name_parts = @full_name.split
    @first_name = name_parts[0]
    @last_name = name_parts[1]
  end

  def total_cost
    @monthly_cost * @contract_length
  end
end  