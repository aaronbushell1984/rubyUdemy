# check equality
puts 1.zero?
puts 1 == 1
# floats can match the int
puts 1.0 == 1

# check non equality
puts 1 != 1

# greater less and including equals
puts 1.positive?
puts 1.negative?
puts 1 >= 0
puts 1 <= 0

# compare types
# true
print '10.eql?(10): ', 10.eql?(10)
puts
print '10.eql?(10.0): ', 10.eql?(10.0)
puts

# triple equals - NOT - equality - more like would first value be in a set would the second be a member of it
# true
# puts /ell/ === 'Hello'
# # false
# puts /ell/ === 'Help'
# # false
# puts Integer === Float
# # true
# puts 1 === 1.0
# # false
# puts Float === Integer
