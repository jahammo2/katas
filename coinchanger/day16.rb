class CoinChanger
  attr_accessor :change

  def create_change(num)
    @change = []
    remainder = num % 25
    num -= remainder
    coins(num,25)
    coins(remainder, 10)
    remainder %= 10
    coins(remainder, 5)
    remainder %= 5
    coins(remainder, 1)

    @change
  end

  def coins(val, coin)
    length = val/coin
    while length >= 1
      change.push(coin)
      length -= 1
    end
  end
end

require 'spec_helper'
require_relative '../today'

describe CoinChanger do
  cc = CoinChanger.new

  it "will return 4 quarters if the change amount is 100" do
    expect(cc.create_change(100)).to eq([25,25,25,25])
  end

  it "will return 2 quarters, 2 dimes, and 2 pennies, if the change amount is 72" do
    expect(cc.create_change(72)).to eq([25,25,10,10,1,1])
  end
  it "will return 3 quarters and 2 pennies, if the change amount is 77" do
    expect(cc.create_change(77)).to eq([25,25,25,1,1])
  end

  it "will return nothing if the change amount is 0" do
    expect(cc.create_change(0)).to eq([])
  end
end

