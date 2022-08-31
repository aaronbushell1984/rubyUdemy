# Add Comments with hashtag

# put string prints with a newline and does not return string - therefore returns nil
puts "Hello World - puts"

# print prints the string without a newline and could be added with \n
print "Hello World - print\n"

# p returns the string
p "Hello World - p"

# declare and assign variable on one line
greeting = "Hello World"

# print variable and concatenate
puts greeting + " - variable and concatenation"

# declare function with def, identifier, function logic then end if no arguments present
def say_hello
  puts "Hello World - from a function"
end

# call a function by name
say_hello

# arguments are added with ()
def say_hello_argument(tail_of_hello)
  puts "Hello World - " + tail_of_hello
end

# calling arguments are NOT in ()
say_hello_argument "from function with arguments"
