def valid_number?(entry)
  entry.to_i.to_s == entry
end

picked = (1..100).to_a.sample

loop do
  
  # validation for user entry
  user_entry = ""
  loop do
    puts "Please guess the number!"
    user_entry = gets.chomp
    
    if valid_number?(user_entry)
      break
    else
      puts "Please enter integer"
    end
  end

  user_entry = user_entry.to_i
  
  if user_entry == picked
    puts "Bingo!"
    break
  elsif user_entry > picked
    puts "Your number is too high"
  elsif user_entry < picked
    puts "Your number is too low"
  end
end
