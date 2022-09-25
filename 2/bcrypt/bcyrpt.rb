# frozen_string_literal: true

require 'bcrypt'

# create hashes the provided password with a salt resulting in a different hash each call, even on same password
my_password = BCrypt::Password.create('my password')
#=> "$2a$12$z3.9.mVH.UIcBAxTKe8YnuCQ8b3iAILs/QZr18ogwduYOp21t6GM."
my_password_again = BCrypt::Password.create('my password')
#=> "$2a$12$oAp2z68WpiWrTD9ON.Pzb.r0nxWICmsMk374USyul.A40Pp048Hnq"

puts "First call: 'my password create' = #{my_password}"
puts "Second call: 'my password create' = #{my_password_again}"
puts my_password.version              #=> "2a"
puts my_password.cost                 #=> 12
puts my_password == 'my password'     #=> true
puts my_password == 'not my password' #=> false

# new takes the password stores for verification
puts my_password = BCrypt::Password.new(my_password)
puts my_password == 'my password'     #=> true
puts my_password == 'not my password' #=> false
