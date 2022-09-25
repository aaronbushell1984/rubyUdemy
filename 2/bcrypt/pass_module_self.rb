# frozen_string_literal: true

##
# PassModuleSelf contains helper methods for handling password securely
module PassModuleSelf

  require 'bcrypt'

  def self.create_hash_digest(password)
    BCrypt::Password.create password
  end

  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def self.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  def self.authenticate_user?(username, password, list_of_users)
    list_of_users.each do |user_record|
      return true if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
    end
    false
  end
end
