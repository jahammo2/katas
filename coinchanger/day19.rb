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

require 'spec_helper'
require_relative '../today'

describe RomanNumeralChanger do
  roman_numeral_changer = RomanNumeralChanger.new

  it "gives an I if the numeral is 1" do
    expect(roman_numeral_changer.create_letter(1)).to eq('I')
  end

  it "gives a V if the numeral is 5" do
    expect(roman_numeral_changer.create_letter(5)).to eq('V')
  end

  it "gives an X if the numeral is 10" do
    expect(roman_numeral_changer.create_letter(10)).to eq('X')
  end

  it "gives an L if the numeral is 50" do
    expect(roman_numeral_changer.create_letter(50)).to eq('L')
  end

  it "gives a C if the numeral is 100" do
    expect(roman_numeral_changer.create_letter(100)).to eq('C')
  end

  it "gives a IX if the numeral is 9" do
    expect(roman_numeral_changer.create_letter(9)).to eq('IX')
  end

  it "gives a VIII if the numeral is 8" do
    expect(roman_numeral_changer.create_letter(8)).to eq('VIII')
  end

  it "gives a III if the numeral is 3" do
    expect(roman_numeral_changer.create_letter(3)).to eq('III')
  end

  it "gives a XVII if the numeral is 17" do
    expect(roman_numeral_changer.create_letter(17)).to eq('XVII')
  end

  it "gives a XLI if the numeral is 41" do
    expect(roman_numeral_changer.create_letter(41)).to eq('XLI')
  end

  it "gives a LXX if the numeral is 70" do
    expect(roman_numeral_changer.create_letter(70)).to eq('LXX')
  end

  it "gives a LXXVIII if the numeral is 78" do
    expect(roman_numeral_changer.create_letter(78)).to eq('LXXVIII')
  end

  it "gives a LXXXI if the numeral is 81" do
    expect(roman_numeral_changer.create_letter(81)).to eq('LXXXI')
  end

  it "gives a CXXXIV if the numeral is 134" do
    expect(roman_numeral_changer.create_letter(134)).to eq('CXXXIV')
  end

  it "gives a DCCLXXX if the numeral is 200" do
    expect(roman_numeral_changer.create_letter(200)).to eq('CC')
  end

  it "gives a '' if the numeral is 0" do
    expect(roman_numeral_changer.create_letter(0)).to eq('')
  end
end


