require 'rspec' #connect to rspec gem
require './lib/player' #makes the player class available to the test

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

  def to_s
    "Name: #{@first_name} #{@last_name}, Monthly Cost: #{@monthly_cost}, Contract Length: #{@contract_length} months"
  end
end

#in pry use self to see the instance of the class
#much like pwd in bash
