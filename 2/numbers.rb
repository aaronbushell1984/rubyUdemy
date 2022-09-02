# numbers can be directly declared and have operations performed on them
puts 1 + 2
puts 2 - 1
puts 2 * 3

# directly dividing ints loses decimal fractions (rounds down)
puts 1 / 3
puts 2 / 3
# the whole numbers are retained
puts 3 / 2

# dividing floats returns accuracy
puts 1.0 / 3.0
# this works with one float and one integer
puts 1 / 3.0
puts 1.0 / 3

# NB strings can be multiplied by a number:
puts "-" * 20
# a number cannot be multiplied by a string
# puts 20 * "-" does not work

# times can also perform this operation
20.times {print "-"}
print "\n"

# times can perform any operation a number of time
5.times {puts rand(10)}

# string can be converted to int and float if it makes sense:
puts "10".to_i
puts "10.0".to_f
# NB. if it would not make sense then it is converted to ZERO
puts "would not make sense to convert to int and therefore ZERO".to_i