class CoinChanger
  attr_accessor :change

  # def initialize
  #   @change = []
  # end

  def create_change(num)
    @change = []
    remainder = num % 25
    num -= remainder
    coins(num,25)
    coins(remainder,10)
    remainder %= 10
    coins(remainder,5)
    remainder %= 5
    coins(remainder,1)
    @change
  end

  def coins(val,coin)
    length = val/coin
    while length >= 1
      change.push(coin)
      length -= 1
    end
  end










end
