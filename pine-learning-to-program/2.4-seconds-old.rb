
# Initial Solution

def seconds_old(years_old)
  years_old * 365 * 24 * 60 * 60
end


# Refactored Solution



# Driver Tests

p seconds_old(0) == 0
p seconds_old(1) == 31536000
p seconds_old(21) == 662256000


