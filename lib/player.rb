
class Player
    attr_reader :first_name, :last_name, :monthly_cost, :contract_length

    def initialize (name, monthly_cost, contract_length)
        @first_name, @last_name = name.split(/ /, 2)
        @monthly_cost = monthly_cost
        @contract_length = contract_length
    end

    def total_costg
        contract_length * monthly_cost
    end
end