class Player
    attr_reader :first_name, :last_name, :monthly_cost, :contract_length, :total_cost, :nickname

    def initialize(name, monthly_cost, contract_length)
        @monthly_cost = monthly_cost
        @contract_length = contract_length
        @total_cost = monthly_cost * contract_length

        names = name.split(' ')
        @first_name = names.first
        @last_name = names.last
    end

    def set_nickname(nickname)
        @nickname = nickname
    end
end