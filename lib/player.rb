class Player
    attr_reader :monthly_cost, :contract_length

    def initialize(name, monthly_cost, contract_length)
        @full_name = name
        @monthly_cost = monthly_cost
        @contract_length = contract_length
        @nickname = nil                     #Might not have a nickname
    end

    def first_name()
        #Pull from full_name
        (@full_name.split())[0]
    end

    def last_name()
        #Similar to first_name()
        (@full_name.split())[1]
    end

    def total_cost()           #NOTE: I assume "costg" is intentional spelling?
        #Units for everything are in $ and months
        monthly_cost * contract_length
    end

    def nickname()
        #Could also be accomplished w/ attr_reader
        @nickname
    end

    def set_nickname!(nickname)
        #Could also be accomplished w/ attr_accessor
        @nickname = nickname
    end

end
