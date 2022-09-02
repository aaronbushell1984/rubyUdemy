# frozen_string_literal: true

# declare an array
a = [1, 2, 3]

puts 'print: shuffle array'
p a.shuffle
puts 'print original array (not shuffled)'
p a
puts 'print: shuffle array with a bang'
p a.shuffle!
puts 'print array after shuffle bang (retains shuffled)'
p a

# declare a range
r = 1..100

puts 'print: convert range to array and shuffle with a bang'
p r.to_a.shuffle!

puts 'print original range (not array and not shuffled despite bang)'
p r

# capture chain of functions with a bang
capture = r.to_a.shuffle!
puts 'print capture: convert range to array and shuffle with a bang'
p capture

# declare second array
a2 = [1, 2, 3, 4]

puts 'mutate the caller of reverse on array without a bang'
puts a2.reverse
puts 'check range not reversed'
p a2

puts 'mutate the caller of reverse on array with a bang'
puts a2.reverse!
puts 'check range is reversed'
p a2

