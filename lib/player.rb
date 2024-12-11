require 'rspec' #connect to rspec gem
require './lib/player' #makes the player class available to the test

class Player
  attr_reader :first_name, :last_name, :monthly_cost, :contract_length

  def initialize(name, monthly_cost, contract_length)
    @first_name, @last_name = name.split 
    #new instance of player class with 3 arguments
    #split method is used to split the name into first and last name
    #name is the argument passed to the initialize method
    @monthly_cost = monthly_cost
    @contract_length = contract_length
  end

  def total_cost
    @monthly_cost * @contract_length
  end

  def add_player(player)
    @roster << player
end
end