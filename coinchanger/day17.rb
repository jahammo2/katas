class CoinChanger
  attr_accessor :change

  def create_change(num)
    @change = []
    remainder = num % 25
    num -= remainder
    coins(num,25)
    coins(remainder, 10)
    puts remainder
    remainder %= 10
    puts remainder
    coins(remainder, 5)
    remainder %= 5
    coins(remainder, 1)
    @change
  end

  def coins(val,coin)
    length = val/coin
    while length >= 1
      @change.push(coin)
      length -= 1
    end
  end

end

require 'spec_helper'
require_relative '../today'

describe CoinChanger do
  cc = CoinChanger.new

  it "will give out 4 quarters if the amount of change is 100" do
    expect(cc.create_change(100)).to eq([25,25,25,25])
  end

  it "will give out 1 quarter, 1 dime, 1 nickel, and 1 penny, if the amount of change is 41 cents" do
    expect(cc.create_change(41)).to eq([25,10,5,1])
  end

  it "will give out 2 dimes if the amount of change is 20 cents" do
    expect(cc.create_change(20)).to eq([10,10])
  end

  it "will give out nothings if the amount of change is 0" do
    expect(cc.create_change(0)).to eq([])
  end

end

