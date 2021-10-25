class OysterCard

    MAXIMUM_BALANCE = 90

    attr_reader :balance
    def initialize
        @balance = 0
    end
    def top_up(value)
      fail  'Maximum balance of £90 exceeded.' if value + @balance > MAXIMUM_BALANCE
      @balance += value 
    end
end