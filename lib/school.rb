# code here!
class School
  attr_accessor :add_student, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new{ |h, k| h[k] = [] }
  end

  def grade(gradeCategory)
    @roster[gradeCategory]
  end

  def add_student(student_name, grade)
    @roster[grade] << student_name
  end

  def sort
    @roster = @roster.sort_by { |key| key }.to_h
    @roster.each_value(&:sort!)
  end
end
