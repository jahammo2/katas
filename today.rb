class RomanNumeralChanger

  def numeral
    {
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I',
    }
  end

  def create_letter (num)
    letters = ''
    numeral.each do |key, value|
      quotient, modulus = num.divmod(key)
      letters << value * quotient
      num = modulus
    end
    letters
  end

end
