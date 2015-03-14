
# Initial Solution

# def greeter
#   puts "What is your first name?"
#   first_name = gets.chomp
#   puts "What is your middle name?"
#   middle_name = gets.chomp
#   puts "What is your last name?"
#   last_name = gets.chomp
#   p "Hello #{first_name} #{middle_name} #{last_name}!"
# end


# Refactored Solution

def greeter
  names = %w(first middle last)
  full_name = []

  names.each do |part|
    puts "What is your #{part} name?"
    full_name << gets.chomp
  end

  p "Hello #{full_name.join(' ')}!"
end


# Driver Tests

greeter
