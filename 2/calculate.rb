def prompt_capture_numbers
  print "First Number:"
  first = gets.chomp.to_f
  print "Second Number:"
  second = gets.chomp.to_f
  return first, second
end

def prompt_capture_operator
  print "Operator: <+, -, *, /, %>"
  gets.chomp
end

##
# Adds and returns the first and second value
def add(first, second)
  first + second
end

def subtract(first, second)
  first - second
end

def divide(first, second)
  first / second
end

def multiply(first, second)
  first * second
end

def modulus(first, second)
  first % second
end

def calculate(operator, first, second)
  case operator
  when "+"
    puts multiply(first, second)
  when "-"
    puts subtract(first, second)
  when "/"
    puts divide(first, second)
  when "*"
    puts multiply(first, second)
  when "%"
    puts modulus(first, second)
  else
    puts "#{operator} is not a valid operator"
    operator = prompt_capture_operator
    calculate(operator, first, second)
  end
end

first, second = prompt_capture_numbers
operator = prompt_capture_operator
calculate(operator, first, second)


