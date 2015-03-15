
# Initial Solution

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

def leap_years(floor_year, ceiling_year)
  (floor_year..ceiling_year).each do |year|
    puts year if leap_year?(year)
  end
end

# Refactored Solution



# Driver Tests

leap_years(1799, 1905)