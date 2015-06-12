class RomanNumeralChanger

  def start
    puts "which number do you want to Roman?"
    puts create_letter(gets.chomp)
  end

  def numerals
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

  def create_letter(num)
    num = num.to_i
    letters = ''
    numerals.each do |key, value|
      quotient, modulus = num.divmod(key)
      letters << value * quotient
      num = modulus
    end
    letters
  end

end

rnc = RomanNumeralChanger.new
rnc.start
