
# Initial Solution

# 99 bottles of beer on the wall, 99 bottles of beer
# Take one down, pass it around, 98 bottles of beer on the wall...

def bottle_form(number)
  (number == 1) ? "bottle" : "bottles"
end

def noun(number)
  "#{number} #{bottle_form(number)}"
end

def bottles_of_beer(num_bottles)
  while num_bottles > 0
    puts "#{noun(num_bottles)} of beer on the wall, #{noun(num_bottles)} of beer"
    num_bottles -= 1
    puts "Take one down, pass it around, #{noun(num_bottles)} of beer on the wall"
  end
end


# Refactored Solution



# Driver Tests

bottles_of_beer(99)
