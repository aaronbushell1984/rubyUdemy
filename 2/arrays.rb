# frozen_string_literal: true

# declare array and assign values
a = [1, 2, 3]

puts 'print each element on new line:'
puts a

puts 'print array on one line:'
p a

puts 'print last element:'
puts a.last

puts 'print first element:'
puts a.first

puts 'print second element:'
puts a[1]

puts 'print shuffle array'
puts a.shuffle

puts 'add 4 to end of array'
p a << 4

puts 'add 0 to start of array'
p a.unshift(0)

puts 'add a string to start of an array of int'
p a.unshift('This array holds all numbers apart from this string:')

puts 'add a string to end of array using append'
p a.append('This array holds all numbers apart from this string:')

puts 'show array without duplicates'
p a.uniq
puts 'check did not mutate caller'
p a

puts 'remove duplicates from array (show without duplicates and mutate caller)'
p a.uniq!
puts 'check did mutate caller'
p a

puts 'check for empty array'
p a.empty?

puts 'check array contains 1'
p a.include?(1)

# declare new Time
time = Time.new

puts 'push an item to end of array'
p a.push("pushed on at: #{time.inspect}")

puts 'pop an item (remove from end of array and return to caller)'
popped = a.pop()
puts 'print captured popped item'
puts popped
puts 'check array after pop'
p a

puts 'join {squash) items in array to string'
puts a.join

puts 'join with separator (for csv for example)'
puts csv = a.join(',')

puts 'split a string (the csv created earlier)'
p csv.split

puts "split a string using separator (undo join with separator of csv earlier)\nNB. Integers are converted to strings"
p csv.split(',')

puts 'create array from a sentence'
p %w[create array from a sentence]
