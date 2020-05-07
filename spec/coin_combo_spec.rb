require('rspec')
require('coin_combo')


describe("CoinCalculator#generate_coin_combo") do
  it("correctly accepts an amount of cents as a property") do
    cents = CoinCalculator.new(0.06)
    expect(cents.total_cents).to(eq(0.06))
  end

  # it("reduces the coins down to only the coins that are less than the total_cents") do
  #   cents = CoinCalculator.new(0.06)

  # end

end

describe("CoinCalculator#coin_list") do
  it("correctly returns a list of coin values") do
    cents = CoinCalculator.new(0.06)
    expect(cents.coin_list()).to(eq([0.25, 0.10, 0.05, 0.01]))
  end
end

describe("CoinCalculator#filter_coin_list") do
  it("reduces the coins down to only the coins that are less than the total_cents") do
    cents = CoinCalculator.new(0.06)
    expect(cents.filter_coin_list()).to(eq([0.05, 0.01]))
  end
end