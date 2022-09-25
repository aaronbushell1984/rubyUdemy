# frozen_string_literal: true

require_relative 'pass_module_mixin'

##
# Student class demonstrates the use of a mixin
class Student
  include PassModuleMixin
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

hashed_password = aaron.create_hash_digest('aaron')
puts hashed_password
