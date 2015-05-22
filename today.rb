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
