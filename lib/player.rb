# class represents an individual player in a sports team
class Player
  # These attributes allow external access to player details
  attr_reader :first_name, :last_name, :monthly_cost, :contract_length, :nickname

  # Initializes a new Player object with their name, monthly cost, and contract length
  def initialize(full_name, monthly_cost, contract_length)
    # Split full name into first and last names
    @first_name, @last_name = full_name.split
    # Monthly cost of player's contract
    @monthly_cost = monthly_cost
    # Length of player's contract in months
    @contract_length = contract_length
    # Player starts with no nickname
    @nickname = nil
  end

  # Calculates total cost of the player's contract
  def total_cost
    @monthly_cost * @contract_length
  end

  # Assigns a nickname to the player
  def set_nickname!(nickname)
    @nickname = nickname
  end
end

