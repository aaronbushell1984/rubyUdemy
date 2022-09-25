# frozen_string_literal: true

##
# School represents a school with name and number of students
class School
  attr_reader :name, :students

  def initialize(name)
    @name = name
    @students = []
  end
end
