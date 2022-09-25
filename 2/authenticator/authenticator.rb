# frozen_string_literal: true

users = [
  { username: 'Aaron', password: 'aaron' },
  { username: 'Ethan', password: 'ethan' },
  { username: 'Mona', password: 'mona' }
]

def auth_user(username, password, list_users)
  list_users.each do |user|
    if user[:username] == username && user[:password] == password
      puts '-----Successful Login-----'
      return user
    end
  end
  '-----Incorrect details-----'
end

puts 'Welcome to the Authenticator'
25.times { print '-' }
puts
puts 'This program will take input from the user and compare the password'
puts 'If password is correct you will get back the user object'
puts

attempts = 1
while attempts < 4
  print 'Username:'
  username_input = gets.chomp
  print 'Password:'
  password_input = gets.chomp
  puts auth_user(username_input, password_input, users)

  print '----Press n to quit or any other key to continue----'
  input = gets.chomp.downcase
  break if input == 'n'

  attempts += 1
  puts
end
puts 'Maximum attempts were exceeded' if attempts == 4

