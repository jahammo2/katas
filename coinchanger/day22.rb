class RomanNumeralChanger

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
    letters = ''
    numerals.each do |key, value|
      quotient, modulus = num.divmod(key)
      letters << value * quotient
      num = modulus
    end
    letters
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

