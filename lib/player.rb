require 'rspec' #connect to rspec gem
require './lib/player' #makes the player class available to the test

class Player
  attr_reader :first_name, :last_name, :contract, :contract_length

  def initialize(name, contract, contract_length)
    @first_name, @last_name = name.split 
    #new instance of player class with 3 arguments
    #split method is used to split the name into first and last name
    #name is the argument passed to the initialize method
    @contract = contract
    @contract_length = contract_length
  end

  def total_cost
    @contract * @contract_length 
    #total cost is the contract * contract length
    #for example, if the contract is 1000000 and the contract length is 36
    #the total cost will be 36000000 - for now but subject to change based on next test- 
  end

  def to_s
    "Name: #{@first_name} #{@last_name}, Contract: #{@contract}, Contract Length: #{@contract_length} months"
    #string interpolation to display the player's name, contract, and contract length
    #"Name: will display the player's name, contract, and contract length"
    #contract and contract length are based on the arguments passed to the initialize method of the player class
    end
end