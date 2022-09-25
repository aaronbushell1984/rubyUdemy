# frozen_string_literal: true

##
# Student class demonstrates getters and setters using initialize and attr_ methods
class Student

  attr_accessor :first_name, :last_name, :email, :username
  attr_writer :password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

end

aaron = Student.new('Aaron', 'Bushell', 'yep@yep.com', 'yep', 'pass')

puts aaron
puts aaron.first_name
puts aaron.last_name
puts aaron.email
puts aaron.username
# puts aaron.password
