puts "What is your first name?"

# collect user input with gets.chomp
first = gets.chomp

puts "Thanks #{first} nice to meet you!"

puts "How old are you?"

# collecting a number will be received in a string
ageString = gets.chomp

# so if multiplied by two will be two lots of the number
ageString *= 2
# i.e 5 will be 55
puts "Your age doubled if it were a string is: #{ageString}"

puts "How old are you again?"

# collecting a number as string and converting to integer
ageInt = gets.chomp.to_i
puts "Actually your age doubled is: #{ageInt * 2}"


