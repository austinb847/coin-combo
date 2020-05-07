class CoinCalculator
  attr_reader(:total_cents)
  
  def initialize(total_cents)
    @total_cents = total_cents
  end
  
end