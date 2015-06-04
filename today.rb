# next time
# << with strings instead of array
# store in an object
# divmod
# use self (e.g. 152.to_roman)
# make this an actual "game"


class RomanNumeralChanger

  def initialize
    @letters = ''
  end

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
  
  def create_letter(chosen_number) 
    @letters = ''
    choose_letters(chosen_number)
    @letters
  end

  def choose_letters(num)
    numerals_store.each do |key, value|
      quotient, modulus = num.divmod(key)
      @letters << value * quotient if quotient >= 1
      num = modulus
    end
  end

end

