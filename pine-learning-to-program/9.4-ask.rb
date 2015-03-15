
# Initial Solution

def ask(question)
  good_answer = false

  while (not good_answer)
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' or reply == 'no')
      good_answer = true
      if reply == ' yes'
        answer = true
      else
        answer = false
      end
    else
      puts 'Please answer "yes" or "no".'
    end
  end
  answer # This is what we return (true or false). end
end


# Refactored Solution

def ask(question)
  loop do
    puts question
    reply = gets.chomp.downcase
    case reply
    when 'yes'
      return true
    when 'no'
      return false
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end


# Driver Tests

puts ask("Do you like me?")