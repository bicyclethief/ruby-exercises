
# Pseudocode
#
# end

# Initial Solution

def roman_numeral(number)
  roman_units = [[1000, "M"],
                 [900, "CM"],
                 [500, "D"],
                 [400, "CD"],
                 [100, "C"],
                 [90, "XC"],
                 [50, "L"],
                 [40, "XL"],
                 [10, "X"],
                 [9, "IX"],
                 [5, "V"],
                 [4, "IV"],
                 [1, "I"]]
  roman = ""

  roman_units.each do |roman_unit|
    if number / roman_unit.first > 0
      factor = number / roman_unit.first
      factor.times { roman += roman_unit.last }
      remainder = number % roman_unit.first
      return (remainder == 0) ?  roman : roman + roman_numeral(remainder)
    end
  end
end

# Refactored Solution



# Driver Tests

p roman_numeral(1) == "I"
p roman_numeral(2) == "II"
p roman_numeral(3) == "III"
p roman_numeral(4) == "IV"
p roman_numeral(5) == "V"
p roman_numeral(6) == "VI"
p roman_numeral(7) == "VII"
p roman_numeral(8) == "VIII"
p roman_numeral(9) == "IX"
p roman_numeral(10) == "X"
p roman_numeral(40) == "XL"
p roman_numeral(44) == "XLIV"
p roman_numeral(45) == "XLV"
p roman_numeral(49) == "XLIX"
p roman_numeral(50) == "L"
p roman_numeral(99) == "XCIX"
p roman_numeral(100) == "C"
p roman_numeral(101) == "CI"
p roman_numeral(400) == "CD"
p roman_numeral(497) == "CDXCVII"
p roman_numeral(500) == "D"
p roman_numeral(777) == "DCCLXXVII"
p roman_numeral(999) == "CMXCIX"
p roman_numeral(1000) == "M"
p roman_numeral(3000) == "MMM"
