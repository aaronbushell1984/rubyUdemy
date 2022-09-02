# strings can be defines with ' or "
first = 'Aaron'
last = "Bushell"

# concatenation
puts first + " " + last

# interpolation - does not work inside of single quotes
# i.e puts 'First Name: #{first}, Last Name: #{last}' does not work
puts "First Name: #{first}, Last Name: #{last}"

full = "#{first} #{last}"
puts full

# find type
puts full.class
puts "Assign and find type".class
puts 10.class
puts 10.0.class

# find methods
puts "a string".methods

# convert integer and print type
puts 10.to_s.class

# find length
puts full.length

# reverse - NB passed by value (working with a copy)
puts full.reverse
puts full

# check empty
puts "a string".empty?
puts "".empty?

# check nil
puts "a string".nil?
puts "".nil?

# substitute value
puts full
puts full.sub("Aaron", "Mrunalini")

# pass-reference-by-value - ruby passes the equivalent of an &address/*pointer
puts full
# assigning variable the name of an already declared value will point at the original spot in memory
newFull = full
puts newFull
puts full
# assigning this new variable to a new value creates a new spot in memory and leaves the old variable name and its value unchanges
newFull = "Changed"
puts newFull
puts full

# escaping is possible with \
puts "I need to print quote marks: \" so it is escaped with a \\"