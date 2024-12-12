require 'rspec' #connect to rspec gem
require './lib/player' #makes the player class available to the test

class Player
  attr_reader :first_name, :last_name, :monthly_cost, :contract_length 
  #makes these attributes readable by the test file SCOPE
  #behind the scenes  the attr_reader method creates a method that returns the value of the instance variable


  def initialize(name, monthly_cost, contract_length)
    @first_name, @last_name = name.split
    @monthly_cost = monthly_cost
    @contract_length = contract_length

    #refactoring is the process of changing code to make it more readable, maintainable, and efficient
  end

  def total_cost
    @monthly_cost * @contract_length
  end

  def to_s #overriding the to_s method to return a string. #to_s is a method that returns a string representation of an object
    "Name: #{@first_name} #{@last_name}, Monthly Cost: #{@monthly_cost}, Contract Length: #{@contract_length} months"
  end  
  #string representation of the object of Name: returns the first name and last name, 
  #Monthly Cost: returns the monthly cost, 
end

#in pry use self to see the instance of the class
#much like pwd in bash
