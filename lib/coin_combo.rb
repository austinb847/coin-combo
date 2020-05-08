class CoinCalculator
  attr_reader(:total_cents)
  
  def initialize(total_cents)
    @total_cents = total_cents
  end

  def coin_list()
    return [
      25,
      10,
      5,
      1
    ]
  end

  def generate_coin_combo()
    amount = @total_cents
    coins = coin_list()
    coins.sort.
          reverse.
          map{|coin| f = amount/coin; amount %= coin; Array.new(f){coin} }.
          flatten
  end
end



