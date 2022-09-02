puts "What's your first name?"
first = gets.chomp
puts "What's your last name?"
last = gets.chomp
full = "#{first} #{last}"
puts "Your full name is #{full}"
puts "Your name reversed is #{full.reverse}"
puts "Your name has #{full.length-1} characters"