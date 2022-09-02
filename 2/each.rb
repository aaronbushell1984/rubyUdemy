puts 'create an array from a sentence'
p sentence_array = %w[An array made originally from a sentence]
puts

puts 'loop and print array using familiar block syntax (includes: do and end)'
sentence_array.each do |word|
  print "#{word} "
end
puts

puts 'loop and print array using ruby preferred syntax'
sentence_array.each { |word| print "#{word} " }
puts

puts 'create array from range and shuffle'
shuffled_hundred = (1..100).to_a.shuffle
puts shuffled_hundred

puts "use select to obtain all odds in an array\nNB. p shuffled_hundred.select { |number| number.odd? } gives a linting error"
p shuffled_hundred.select(&:odd?)

puts "parenthesize the parameter to make sure block is associated with select:\nshuffled_hundred.select(&:odd?)"
p shuffled_hundred.select(&:odd?)

