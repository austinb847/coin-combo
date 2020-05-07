require('rspec')
require('coin_combo')


describe("CoinCalculator#generate_coin_combo") do
  it("correctly accepts an amount of cents as a property") do
    cents = CoinCalculator.new(0.06)
    expect(cents.total_cents).to(eq(0.06))
  end
end