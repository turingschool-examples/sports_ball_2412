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
  end

  def to_s
    "Name: #{@first_name} #{@last_name}, Contract: #{@contract}, Contract Length: #{@contract_length} months"
  end
end