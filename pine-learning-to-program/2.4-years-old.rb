
# Initial Solution

def years_old(seconds_old)
  (seconds_old.to_f / (365 * 24 * 60 * 60)).floor
end


# Refactored Solution

def years_old(seconds_old)
  seconds_in_year = 365 * 24 * 60 * 60
  (seconds_old.to_f / seconds_in_year).floor
end

# Driver Tests

p years_old(0) == 0
p years_old(31536003) == 1
p years_old(662256800) == 21


