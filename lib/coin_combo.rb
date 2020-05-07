class CoinCalculator
  attr_reader(:total_cents)
  
  def initialize(total_cents)
    @total_cents = total_cents
  end

  def coin_list()
    return [
      0.50,
      0.25,
      0.10,
      0.05,
      0.01
    ]
  end

  def filter_coin_list()
    coins = coin_list()
    coins.select{ |c| c <= @total_cents}
  end
  
end