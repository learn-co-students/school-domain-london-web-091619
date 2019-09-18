require 'pry'

class School
attr_accessor :roster, :school_name, :student_name, :add_student, :grade

def initialize(school_name)
  @school_name = school_name
  @roster = {}
end

def add_student(student_name, grade)
  if @roster[grade]
    @roster[grade] << student_name
  else
    @roster[grade] = []
    @roster[grade] << student_name
  end
end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each_value{|v| v.sort!}
end
end
