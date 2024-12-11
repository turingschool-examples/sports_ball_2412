class Player
    attr_reader :first_name, :last_name, :monthly_cost, :contract_length, :total_cost
    def initialize(name, monthly_cost, contract_length)
        @first_name, @last_name = name.split
        @monthly_cost = monthly_cost
        @contract_length = contract_length
        
    end

    def total_cost
       @contract_length * @monthly_cost 

    end
end