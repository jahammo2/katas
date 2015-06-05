# next time
# << with strings instead of array
# store in an object
# divmod
# use self (e.g. 152.to_roman)
# make this an actual "game"


class RomanNumeralChanger

  attr_accessor :letters

  def numerals_store
    {
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
    }
  end

  def create_letter(number)
    @letters = ''
    append_letters(number)
    @letters
  end

  def append_letters(num)
    numerals_store.each do |key, value|
      quotient, modulus = num.divmod(key)
      @letters << value * quotient 
      num = modulus
    end
  end

end

