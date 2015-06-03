class RomanNumeralChanger
  attr_accessor :letters
  attr_reader :number
  
  def initialize
    @letters
    @number
  end

  def create_letter(num)
    letters = []
    last_two_digits = num % 100
    last_digit = last_two_digits % 10
    second_digit = last_two_digits - last_digit
    # the number that is still divisible by 100 so that I can put in C's
    remaining_digits = num - last_two_digits

    letters.push(letterize_remaining_digits(remaining_digits))
    letters.push(letterize_second_digit(second_digit))
    letters.push(letterize_last_digit(last_digit))


    
    letters.join('')
  end

  def letterize_remaining_digits(num)
    remainding_digits_letter_holder = []
    (num/100).times { remainding_digits_letter_holder.push('C') }
    remainding_digits_letter_holder
  end

  def letterize_second_digit(num)
    case num
    when 10
      'X'
    when 20
      'XX'
    when 30
      'XXX'
    when 40
      'XL'
    when 50
      'L'
    when 60
      'LX'
    when 70
      'LXX'
    when 80
      'LXXX'
    when 90
      'XC'
    else
      ''
    end
  end

  def letterize_last_digit(num)
    case num
    when 1
      'I'
    when 2
      'II'
    when 3
      'III'
    when 4
      'IV'
    when 5
      'V'
    when 6
      'VI'
    when 7
      'VII'
    when 8
      'VIII'
    when 9
      'IX'
    else
      ''
    end
  end

  def set_num_below_100(num)
    num % 100
  end

  def pass_in_letter(single_num)
    letters = "#{single_num}"
    letters.to_s
  end




end
