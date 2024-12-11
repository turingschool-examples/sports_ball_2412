require './lib/player.rb'

class Team 
  attr_accessor :mascot, :city, :roster

  def initialize(mascot, city)
    @mascot = mascot
    @city = city
    @roster = []
  end

    def add_player(player)
      @roster << player
    end
      
    def player_count
      @roster.length
    end

    def long_term_players
      @roster.select {|month| month.contract_length > 24}
    end

    def short_term_players
      @roster.select {|month| month.contract_length <= 24}
    end

    def total_value
      @roster.sum {|contract| contract.total_costg}
    end

    def details
      details = {
        total_value: @roster.sum {|contract| contract.total_costg},
        player_count: @roster.length
      }
      return details
    end

    def average_cost_of_player
      total =  @roster.sum {|contract| contract.total_costg}
      average = total / @roster.length
      average.to_s
    end

    def players_by_last_name
      name_list = @roster.map {|name| name.last_name}
      name_list.sort.join(', ')
    end
end