require 'pry'

class Player 
    attr_reader :name, :monthly_cost, :contract_length, :nickname

    def initialize(name, monthly_cost, contract_length)
        @name = name
        @monthly_cost = monthly_cost
        @contract_length = contract_length
        @nickname = nil
    end

    def first_name
        @name.split[0]
    end

    def last_name
        @name.split[1]
    end

    def total_cost
        @monthly_cost * @contract_length 
    end

    def set_nickname!(nick_name)
        @nickname = nick_name
    end
end