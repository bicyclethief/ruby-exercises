require 'pry'

# Initial Solution

def old_Roman_numeral(number)
  roman = ""
  if number / 1000 > 0
    factor = number / 1000
    factor.times { roman += "M" }
    remainder = number % 1000
    return (remainder == 0) ?  roman : roman + old_Roman_numeral(remainder)
  elsif number / 500 > 0
    factor = number / 500
    factor.times { roman += "D" }
    remainder = number % 500
    return (remainder == 0) ?  roman : roman + old_Roman_numeral(remainder)
  elsif number / 100 > 0
    factor = number / 100
    factor.times { roman += "C" }
    remainder = number % 100
    return (remainder == 0) ?  roman : roman + old_Roman_numeral(remainder)
  elsif number / 50 > 0
    factor = number / 50
    factor.times { roman += "L" }
    remainder = number % 50
    return (remainder == 0) ?  roman : roman + old_Roman_numeral(remainder)
  elsif number / 10 > 0
    factor = number / 10
    factor.times { roman += "X" }
    remainder = number % 10
    return (remainder == 0) ?  roman : roman + old_Roman_numeral(remainder)
  elsif number / 5 > 0
    factor = number / 5
    factor.times { roman += "V" }
    remainder = number % 5
    return (remainder == 0) ?  roman : roman + old_Roman_numeral(remainder)
  elsif number / 1 > 0
    factor = number / 1
    factor.times { roman += "I" }
    return roman
  end
end


# Refactored Solution

def old_Roman_numeral(number)
  roman_units = [[1000, "M"],
                 [500, "D"],
                 [100, "C"],
                 [50, "L"],
                 [10, "X"],
                 [5, "V"],
                 [1, "I"]]
  roman = ""

  roman_units.each do |roman_unit|
    if number / roman_unit.first > 0
      factor = number / roman_unit.first
      factor.times { roman += roman_unit.last }
      remainder = number % roman_unit.first
      return (remainder == 0) ?  roman : roman + old_Roman_numeral(remainder)
    end
  end
end

# Driver Tests

p old_Roman_numeral(1) == "I"
p old_Roman_numeral(2) == "II"
p old_Roman_numeral(3) == "III"
p old_Roman_numeral(4) == "IIII"
# binding.pry
p old_Roman_numeral(5) == "V"
p old_Roman_numeral(6) == "VI"
p old_Roman_numeral(7) == "VII"
p old_Roman_numeral(8) == "VIII"
p old_Roman_numeral(9) == "VIIII"
p old_Roman_numeral(10) == "X"
p old_Roman_numeral(44) == "XXXXIIII"
p old_Roman_numeral(45) == "XXXXV"
p old_Roman_numeral(49) == "XXXXVIIII"
p old_Roman_numeral(50) == "L"
p old_Roman_numeral(99) == "LXXXXVIIII"
p old_Roman_numeral(100) == "C"
p old_Roman_numeral(101) == "CI"
p old_Roman_numeral(497) == "CCCCLXXXXVII"
p old_Roman_numeral(500) == "D"
p old_Roman_numeral(777) == "DCCLXXVII"
p old_Roman_numeral(999) == "DCCCCLXXXXVIIII"
p old_Roman_numeral(1000) == "M"
p old_Roman_numeral(3000) == "MMM"
