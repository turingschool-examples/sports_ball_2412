# Player class represents an individual player with attributes such as name, contract details, and optional nickname.
class Player
  attr_reader :first_name, :last_name, :monthly_cost, :contract_length, :nickname

  # Initialize a new player with full name, monthly cost, and contract length (in months).
  # The full name is split into first and last names.
  def initialize(full_name, monthly_cost, contract_length)
    @first_name, @last_name = full_name.split # Splits the full name into first and last name.
    @monthly_cost = monthly_cost             # Monthly cost of the player's contract.
    @contract_length = contract_length       # Length of the contract in months.
    @nickname = nil                          # Players start w/o a nickname.
  end

  # Calculate total cost of the player's contract.
  def total_cost
    @monthly_cost * @contract_length
  end

  # Assign a nickname to the player.
  def set_nickname!(nickname)
    @nickname = nickname
  end
end
