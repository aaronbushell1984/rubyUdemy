# frozen_string_literal: true

require 'bcrypt'

users = [
  { username: 'Aaron', password: 'aaron' },
  { username: 'Ethan', password: 'ethan' },
  { username: 'Mona', password: 'mona' }
]

def create_hash_digest(password)
  BCrypt::Password.create password
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

def authenticate_user?(username, password, list_of_users)
  list_of_users.each do |user_record|
    return true if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
  end
  false
end

new_pass = create_hash_digest 'password'
puts new_pass == 'password'

secure_users = create_secure_users users

puts "Bad password gives: #{authenticate_user?('Ethan', 'mona', secure_users)}"
puts "Good password gives: #{authenticate_user?('Mona', 'mona', secure_users)}"
