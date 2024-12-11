

class Player
  attr_accessor :name, :monthly_cost, :contract_length, :nickname

  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = ()

  end

  def first_name
    @name.split(' ').first
  end

  def last_name
    @name.split(' ').last
  end

  def total_costg
    @monthly_cost * @contract_length
  end

  def set_nickname!(name)
    @nickname = name
  end

end