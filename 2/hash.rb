# frozen_string_literal: true

# declare a hash - String - Integer
h = { 'a' => 1, 'b' => 2, 'c' => 3 }
puts 'print String-Integer hash'
p h
puts 'print value using key'
puts h['b']

# declare a hash - Integer - String
h1 = { 0 => 'a', 2 => 'b', 3 => 'c' }
puts 'print Integer -String hash'
puts h1[2]

# declare a symbol hash
h2 = { a: 'apple', b: 'banana' }
p h2

puts 'print value via symbol'
puts h2[:b]

puts 'print all keys in a hash'
p h2.keys

puts 'add to a hash and print'
h2[:c] = 'car'
p h2

puts 'change hash value and print'
h2[:b] = 'boat'
p h2

puts 'loop hash and print all keys and values'
h2.each { |key, value| puts "The key is #{key} and the value is #{value}" }

puts 'select from a hash'
puts h2.select do |key|
  key.eql?(:b)
end

puts 'add an Integer value to hash'
h2[:d] = 4
p h2

puts 'remove Integer values from hash'
h2.each { |k, v| h2.delete(k) if v.is_a?(Integer) }
p h2

