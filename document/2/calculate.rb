##
# This class prompts a user for two numbers and performs a calculation
# based on provided operator

##
# Prompts a user for a first and then second number,
# captures the inputs and returns to caller
def prompt_capture_numbers
  print 'First Number:'
  first = gets.chomp.to_f
  print 'Second Number:'
  second = gets.chomp.to_f
  [first, second]
end

##
# Prompts a user for one of five mathematical operators,
# captures the input and returns to caller
def prompt_capture_operator
  print 'Operator: <+, -, *, /, %>'
  gets.chomp
end

##
# Returns addition of the first and second value
# Params:
# - first: first number for addition
# - second: second number for addition
def add(first, second)
  first + second
end

##
# Returns the value of second subtracted from first
def subtract(first, second)
  first - second
end

##
# Returns the value of first divided by second
def divide(first, second)
  first / second
end

##
# Returns the value of first multiplied by second
def multiply(first, second)
  first * second
end

##
# Returns the remainder of first divided by second
def modulus(first, second)
  first % second
end

##
# Takes the first and second numbers and performs calculation based on operators<br>
# - +add+
# - +subtract+
# - +multiply+
# - +divide+
# - +modulus+<br>
# are performed with appropriate operator.<br>
# If operator does not match acceptable symbol then the user is prompted to add a correct selection
def calculate(operator, first, second)
  case operator
  when '+'
    puts multiply(first, second)
  when '-'
    puts subtract(first, second)
  when '/'
    puts divide(first, second)
  when '*'
    puts multiply(first, second)
  when '%'
    puts modulus(first, second)
  else
    puts "#{operator} is not a valid operator"
    calculate(prompt_capture_operator, first, second)
  end
end

first, second = prompt_capture_numbers
operator = prompt_capture_operator
calculate(operator, first, second)


