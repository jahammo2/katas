class CoinChanger
  def create_change(num)
    remainder = num % 25
    num -= remainder
    coins(num, 25)
    coins(remainder, 10)
    remainder %= 10
    coins(remainder, 5)
    remainder %= 5
    coins(remainder, 1)
    @change
  end

  def coins(num, coin)
    length = num/coin
    length.times {@change.push(coin)}
  end
  
  def initialize
    @change = []
  end

end

require 'spec_helper'
require_relative '../today'

describe CoinChanger do
  it "should return 4 quarters" do
    cc = CoinChanger.new
    expect(cc.create_change(100)).to eq([25,25,25,25])
  end

  it "should return 2 quarters, 1 dime, 1 nickel, and 1 penny" do
    cc = CoinChanger.new
    expect(cc.create_change(66)).to eq([25,25,10,5,1])
  end

  it "should return 1 dime" do
    cc = CoinChanger.new
    expect(cc.create_change(10)).to eq([10])
  end

  it "should return nothing" do
    cc = CoinChanger.new
    expect(cc.create_change(0)).to eq([])
  end

end

