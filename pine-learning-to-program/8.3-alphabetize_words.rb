
# Initial Solution

def alphabetize_words
  words = []

  loop do
    response = gets.chomp
    break if response.empty?
    words << response
  end

  puts words.sort
end



# Refactored Solution



# Driver Tests

alphabetize_words