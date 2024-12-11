class Player
    attr_reader :first_name, :last_name, :monthly_cost, :contract_length

    def initialize(name, monthly_cost, contract_length)
        @monthly_cost = monthly_cost
        @contract_length = contract_length

        names = name.split(' ')
        @first_name = names.first
        @last_name = names.last
        binding.pry
    end
end