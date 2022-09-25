# frozen_string_literal: true

require_relative 'pass_module_self'

users = [
  { username: 'Aaron', password: 'aaron' },
  { username: 'Ethan', password: 'ethan' },
  { username: 'Mona', password: 'mona' }
]

secure_users = PassModuleSelf.create_secure_users users

puts "Bad password gives: #{PassModuleSelf.authenticate_user?('Ethan', 'mona', secure_users)}"
puts "Good password gives: #{PassModuleSelf.authenticate_user?('Mona', 'mona', secure_users)}"
