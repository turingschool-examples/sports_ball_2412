

class Player
    attr_reader :full_name, :monthly_cost, :contract_length

    def initialize(full_name, monthly_cost, contract_length)
        @full_name = full_name
        @monthly_cost = monthly_cost
        @contract_length = contract_length
        @nickname = []
    end

    def first_name
        full_name.split.first
    end

    def last_name
        full_name.split.last
    end

    def total_costg
        @monthly_cost * @contract_length
    end

    def set_nickname(nickname)
        @nickname << nickname
    end

end