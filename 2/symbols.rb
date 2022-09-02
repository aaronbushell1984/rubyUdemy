##
# Symbols are only added to memory once making them efficient<br>
# At Ruby Version 2.0.0 and above symbols are garbage collected<br>
# Below symbols remain until program exits
# frozen_string_literal: true

puts 'print a new symbols class (implicitly instantiated, no new method available)'
puts :s.class

puts 'print symbol object id'
puts :s.object_id

puts 'print symbol object id again (same object id - no new object is created)'
puts :s.object_id

puts 'print table of all symbols currently in memory'
p Symbol.all_symbols.to_a

puts 'print ancestor chain of symbols'
p Symbol.ancestors

puts 'print string representation of :s symbol'
puts :s.to_s

puts 'declare symbol in a hash and print'
{ a: 'a', a: 'b' }
puts :a
