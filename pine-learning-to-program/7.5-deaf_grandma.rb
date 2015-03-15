
# Initial Solution

def deaf_grandma
  num_consec_byes = 0
  loop do
    response = gets.chomp
    if response == response.upcase
      puts "NO, NOT SINCE #{rand(1930..1950)}!"
    else
      puts "HUH?! SPEAK UP, SONNY!"
    end

    num_consec_byes = (response == "BYE") ? num_consec_byes+1 : 0
    break if num_consec_byes == 3
  end
end

# Refactored Solution



# Driver Tests

deaf_grandma